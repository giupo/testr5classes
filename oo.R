# let's test plain simple subclassing
  
Person = setRefClass("Person",
  fields=list(
    name="character",
    lastname="character",
    age="numeric"
    ),
  methods = list(
    initialize = function(name = "", lastname="", age=-1) {
      .self$name = name
      .self$lastname = lastname
      .self$age = age
    }, ## initialize
    
    show = function() {
      cat("Name:")
      cat(name)
      cat("\nLastname:")
      cat(lastname)
      cat("\nAge:")
      cat(age)    
    } ## show
    ) ## methods
  ) ## setRefClass

Employee = setRefClass("Employee",
  contains = Person,
  fields = list(wage = "numeric"),
  methods = list(
    initialize = function(name="", lastname="", age=-1, wage=0) {            
      .self$wage = wage
      callSuper(name=name, lastname=lastname, age=age)
    }, # initialize
    show = function() {
      callSuper()
      cat("\nWage:")
      cat(wage)
    }
    ), ##methods
  ) ##setRefClass
