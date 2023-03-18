local BaseClass = {}
BaseClass.new = function()
    local self = {}

    function self.baseFunction()
        print("Inside the baseFunction")
    end

    return self
end

local ExtendingClass = {}
ExtendingClass.new = function()
    local self = BaseClass.new()

    return self
end

local extendingClassInstance = ExtendingClass.new()

-- Prints "Inside the baseFunction"
extendingClassInstance.baseFunction()
Function Overriding
A class may override a function on its parent class by overwriting the function reference on “self”. A call to the parent class implementation can be facilitated by making a private copy of the parent implementation before overriding it. See ExtendingClass1 and ExtendingClass2 in the example below…

local BaseClass = {}
BaseClass.new = function()
    local self = {}

    function self.baseFunction()
        print("Inside the baseFunction")
    end

    return self
end

local ExtendingClass1 = {}
ExtendingClass1.new = function()
    local self = BaseClass.new()

    function self.baseFunction()
        print("Inside Overriding Function")
    end

    return self
end

local ExtendingClass2 = {}
ExtendingClass2.new = function()
    local self = BaseClass.new()

    local parentBaseFunction = self.baseFunction
    function self.baseFunction()
        parentBaseFunction()
        print("Inside Overriding Function")
    end

    return self
end

local extendingClass1Instance = ExtendingClass1.new()
-- Prints "Inside Overriding Function"
extendingClass1Instance.baseFunction()

local extendingClass2Instance = ExtendingClass2.new()
-- Prints the following...
-- "Inside the baseFunction"
-- "Inside Overriding Function"
extendingClass2Instance.baseFunction()