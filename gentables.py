def gen(name, f, low, high, n):
    print(f'pub const {name} = [_]Entry {{')
    step = (high - low) / n
    for i in range(n):
        x = low + i * step
        try:
            value = f(x)
            if abs(value) > 1e10: continue
            print(f'  Entry{{ .x = {x}, .y = {value} }},')
        except: continue
    print('};\n')

from math import *
def cot(x): return cos(x)/sin(x)
def sec(x): return 1/cos(x)
ln = log
log_2 = log2
def log_3(x): return ln(x)/ln(3)
def log_5(x): return ln(x)/ln(5)
log_10 = log10

def f(x):
    if x <= 0:
        return (
            (cos(x) * tan(x) - sin(x) - tan(x)/sec(x))**2
            * (tan(x) / cos(x)) / (cot(x)**3)
        )
    else:
        return (
            ((log_3(x) / ln(x) + log_3(x)) ** 3
             + (log_2(x) / log_3(x)) * log_10(x))
            * (log_3(x) * ((log_3(x) - log_5(x)) * log_10(x))) **2
        )

print("pub const Entry = struct { x: f64, y: f64 };\n")
gen("sin", sin, 0, 2*pi, 20)
gen("cos", cos, 0, 2*pi, 20)
gen("tan", tan, 0, 2*pi, 20)
gen("cot", cot, 0, 2*pi, 20)
gen("sec", sec, 0, 2*pi, 20)
gen("ln", log, 0.001, 10, 20)
gen("log_2", log_2, 0.001, 10, 20)
gen("log_3", log_3, 0.001, 10, 20)
gen("log_5", log_5, 0.001, 10, 20)
gen("log_10", log_10, 0.001, 10, 20)
gen("f", f, -10, 10, 100)
