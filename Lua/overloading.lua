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
 
  
--  Lua believes that the function is being redefined and will only use the most recently defined function.

function add(one, two)
    print(one+two)
end
    
function add(one, two, three)
    print(one+two+three)
end
      
print(add(5,3)) --input:6: attempt to perform arithmetic on a nil value (local 'three')
    