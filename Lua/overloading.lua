--lua does not support function overloading directly but a similar functionality can e achieved using default arguments ad variadic arguments

function test(x, y, z)
    if z == nil then
      print("Two arguments: " .. x .. ", " .. y)
    else
      print("Three arguments: " .. x .. ", " .. y .. ", " .. z)
    end
  end
  
  test("hello", "world")
  test("hello", "world", "Lua")
  