#method overriding using S4

setClass("Animal", slots = c(name = "character"))

setGeneric("speak", function(object) {
  standardGeneric("speak")
})

setMethod("speak", signature = "Animal", function(object) {
  cat(paste("I am", object@name, "\n"))
})

setClass("Dog", contains = "Animal")

setMethod("speak", signature = "Dog", function(object) {
  cat(paste("Woof! I am", object@name, "\n"))
})
