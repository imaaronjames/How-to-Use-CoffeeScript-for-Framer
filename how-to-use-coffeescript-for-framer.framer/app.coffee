#######################################################
## 1. Assignment: Assigning value to variables
#######################################################

number 		= 42 					# Integer
opposite 	= true 					# Boolean
foo 		= "Hello world!" 		# String
array 		= [1,2,3]				# Array
object 		= v1:true, v2:false	# Object
splat 		= race					# Splat (See Splats)
myFunction	= -> print "Yay!"		# Function

## The basic building blocks of CoffeeScript are variables. Variables can have value or be empty (null). Some of the most common values that can be associated with variables are integers, booleans, strings, arrays, objects, splats, and functions. Variables can be reassigned at any time or be removed entirely.



#######################################################
## 2. Conditional assignment: Checking if it's true
#######################################################

number 		= -42 if opposite
opposite 	= true if foo is "Hello world!"

## Conditional assignment allows you to check if a statement is true for a variable. If the statement is true then the variable will be reassigned. If the statement is false, then the variable will not be reassigned.  



#######################################################
## 3. Functions: Reuse code!
#######################################################

funcName	= (argument) -> print argument
square 		= (x) -> print x * x

## It's important to reuse code whenever possible. The general rule of thumb is that if you need to repeat a line of code, then it should most likely belong in a function. Functions allow you to recall and execute code. Think of it like a recipe. You can pass in arguments into a function if your code requires a slight change every time you reuse the code.

funcName("It's alive!")
square(15)

## You must call the function when you want to use it again. Pass in an argument using parentheses. If there is no argument, leave inside the parentheses blank.



#######################################################
## 4. Arrays: Grouping information using one varibale
#######################################################

arrayName 	= ["zero","one","two","three"]
runners 	= ["Aaron","Bruce","Chris","Devon"]

## Arrays allow you to group information together. Think of it like putting files in a folder. 

print arrayName[2] 		# Two
winners = runners[3]		# Devon
print winners

## Use index numbers to target specific objects in your array, starting at 0.



#######################################################
## 5. Objects Literals: Similar to Arrays
#######################################################

objectName =
	greeting: foo
	hipHip: myFunction
	winners: runners[3]

## Object literals are very similar to arrays. they group informations together. The difference is that they group variables together instead of values.

print objectName.greeting



#######################################################
## 6. Splats: the Etc of arguments
#######################################################

race = (winners, runners...) ->
	print winners, runners

## Normally you have to pass in defined arguments into your functions but with splats you can pass in variable number of values into a catchall argument.

#######################################################
## 7. Existence
#######################################################

print "I knew it!" if elvis?

## You can check to see if a variable exists in a project using a "?"



#######################################################
## 8. String Interpolation
#######################################################

car = "Tesla"
print "My favorite car is #{car}"

## String Interpolation allows to you inject code into a string. The string will only print what is returned from the variable.


#######################################################
## 9. Operators & Aliases
###
		is 					===
		isnt 				!==
		not 				!
		and 				&&
		or 					||
		true, yes, on		true
		false, no, off		false
		@, this				this
		of 					in
		in					Checking in a For Loop
###


#######################################################
## 10. Increment & Decrement Integers
#######################################################

points = 100
print ++points # addes 1 to points to make 101
print --points # subtracts 1 from points to make 100

## To quickly add or subtract from an varibale integer, simply add ++ or -- and the 1 will be added or subtracted. Use this sparingly, as it can be considered dirty coding and difficult to debug. 
