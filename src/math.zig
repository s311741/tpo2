const std = @import("std");
const sin_ = std.math.sin;
const ln_ = std.math.log;
const pi = std.math.pi;

fn sin(x: f64) f64 { return sin_(x); }
fn cos(x: f64) f64 { return sin(x + 0.5 * pi); }
fn ln(x: f64) f64 { return @log(x); }

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

test "tables" {
  const eps = 0.001;

  // Trig
  try expectMatchTable(sin, &tables.sin, eps);
  try expectMatchTable(cos, &tables.cos, eps);
  try expectMatchTable(tan, &tables.tan, eps);
  try expectMatchTable(cot, &tables.cot, eps);
  try expectMatchTable(sec, &tables.sec, eps);

  // Log
  try expectMatchTable(ln, &tables.ln, eps);

  // F
  try expectMatchTable(f, &tables.f, eps);
}

test "negative is periodic" {
  for (1..10) |i| {
    const initialX = -0.1 * @as(f64, @floatFromInt(i));
    const initialValue = f(initialX);
    for (1..10) |j| {
      const x = initialX - 2 * pi * @as(f64, @floatFromInt(j));
      try expectWithinEps(f(x), initialValue, 0.001);
    }
  }
}

test "nans" {
  for (1..10) |i| {
    const value = f(pi * (0.5 - @as(f64, @floatFromInt(i))));
    try t.expect(std.math.isNan(value) or @abs(value) > 1e10);
  }
}
