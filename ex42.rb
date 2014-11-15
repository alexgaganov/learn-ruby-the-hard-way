## Animal is-a object look at the extra credit
class Animal

	def make_noize
		puts "Ololo!!1"
	end
end

## Dog is-a Animal
class Dog < Animal

	def initialize(name)
		## Dog has-a name
		@name = name
	end
	
	def make_noize
		puts "Gav-gav!!1"
	end
end

## Cat is-a Animal
class Cat < Animal

	def initialize(name)
		## Cat has-a name
		@name = name
	end
end

## Person is-a Object class
class Person

	def initialize(name)
		## Person has-a name
		@name = name
		
		## Person has-a pet of some kind
		@pet = nil
	end
		
	attr_accessor :pet
	attr_accessor :name
end

class Employee < Person

	def initialize(name, complexity)
		## Calls the same method from the parent class
		super(name)
		## Employee has-a salary
		@salary = work(complexity)
	end
	
	def work(complexity)
	
		if complexity == "high"
			return 200000
		elsif complexity == "low"
			return 100000
		end
	end
	
	attr_accessor :salary
end

## Fish is-a class
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

# Halibut is-a Fish
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")	

## mary is-a Person
mary = Person.new("Mary")

## mary has-a pet. pet is-a object satan
mary.pet = satan

## frank is-a Employee
frank = Employee.new("Frank", "low")

## frank has-a pet. pet is-a object rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()

puts frank.name
puts frank.salary

rover.make_noize
satan.make_noize