# OverLoading d func => area

def area(len, width):
    return len * width

def area(radius, pi):
    return float(pi) * int(radius^2)

print(area(5, 3.14)) # 21.98