from math import *

def gen(name, f):
    print(f'pub const {name} = [_]Entry {{')
    size = 20
    for i in range(size):
        x = i * 2 * pi / size
        try:
            value = f(x)
            if value > 1e10: continue
            print(f'  Entry{{ .x = {x}, .y = {value} }},')
        except: continue
    print('};')

gen("ln", log)
