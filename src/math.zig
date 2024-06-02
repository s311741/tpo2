const std = @import("std");
const sin_ = std.math.sin;
const ln_ = std.math.log;
const pi = std.math.pi;

fn sin(x: f64) f64 { return sin_(x); }
fn ln(x: f64) f64 { return @log(x); }

fn cos(x: f64) f64 { return sin(x + 0.5 * pi); }
fn tan(x: f64) f64 { return sin(x) / cos(x); }
fn cot(x: f64) f64 { return cos(x) / sin(x); }
fn sec(x: f64) f64 { return 1 / cos(x); }

fn log_2(x: f64) f64 { return ln(x) / ln(2); }
fn log_3(x: f64) f64 { return ln(x) / ln(3); }
fn log_5(x: f64) f64 { return ln(x) / ln(5); }
fn log_10(x: f64) f64 { return ln(x) / ln(10); }

fn square(x: f64) f64 { return x * x; }
fn cube(x: f64) f64 { return x * x * x; }

fn f(x: f64) f64 {
  if (x <= 0) {
    return (
      square(((cos(x) * tan(x)) - sin(x)) - (tan(x) / sec(x)))
      * ((tan(x) / cos(x)) / cube(cot(x)))
    );
  } else {
    return (
      (
       cube((log_3(x) / ln(x)) + log_3(x))
       + ((log_2(x) / log_3(x)) * log_10(x))
      )
      * square(log_3(x) * ((log_3(x) - log_5(x)) * log_10(x)))
    );
  }
}

const t = std.testing;
const tables = @import("tables.zig");

fn expectWithinEps(a: f64, b: f64, eps: f64) !void {
  const diff = @abs(a - b);
  const norm = @abs(a) + @abs(b);
  t.expect(diff <= @max(eps, norm * eps)) catch |err| {
    std.log.err("\n {} and {} are too far (eps {})", .{ a, b, eps });
    return err;
  };
}

fn expectMatchTable(
  fun: fn (f64) f64,
  table: []const tables.Entry,
  eps: f64
) !void {
  for (table) |e| {
    try expectWithinEps(fun(e.x), e.y, eps);
  }
}

fn expectPeriodic(
  fun: fn (f64) f64,
  period: f64,
  start: f64,
  stepsWithinPeriod: usize,
  periods: usize,
  eps: f64,
) !void {
  const step = period / @as(f64, @floatFromInt(stepsWithinPeriod));
  for (0..stepsWithinPeriod) |i| {
    const initialX = start + step * @as(f64, @floatFromInt(i));
    const initialValue = fun(initialX);
    for (1..periods) |j| {
      const x = initialX + period * @as(f64, @floatFromInt(j));
      try expectWithinEps(fun(x), initialValue, eps);
    }
  }
}

test "tables" {
  const eps = 0.001;

  {
    try expectMatchTable(sin, &tables.sin, eps);
    try expectMatchTable(cos, &tables.cos, eps);
    try expectMatchTable(tan, &tables.tan, eps);
    try expectMatchTable(cot, &tables.cot, eps);
    try expectMatchTable(sec, &tables.sec, eps);
  }

  {
    try expectMatchTable(ln, &tables.ln, eps);
    try expectMatchTable(log_2, &tables.log_2, eps);
    try expectMatchTable(log_3, &tables.log_3, eps);
    try expectMatchTable(log_5, &tables.log_5, eps);
    try expectMatchTable(log_10, &tables.log_10, eps);
  }

  try expectMatchTable(f, &tables.f, eps);
}

test "periodic" {
  const steps = 10;
  const periods = 100;
  const eps = 0.001;
  try expectPeriodic(f,  -2*pi, 0, steps, periods, eps);
  try expectPeriodic(sin, 2*pi, 0, steps, periods, eps);
  try expectPeriodic(cos, 2*pi, 0, steps, periods, eps);
  try expectPeriodic(tan, 2*pi, 0, steps, periods, eps);
  try expectPeriodic(cot, 2*pi, 1e-3, steps, periods, eps);
  try expectPeriodic(sec, 2*pi, 0, steps, periods, eps);
}

test "poles" {
  for (1..10) |i| {
    const value = f(pi * (0.5 - @as(f64, @floatFromInt(i))));
    try t.expect(std.math.isNan(value) or @abs(value) > 1e10);
  }
}
