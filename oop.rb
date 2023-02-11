# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
 class Unicorn
    def initialize(name)
        @name = name
        @color = "Silver"
    end
    def say
        "*~*#{@name}*~*"
    end
end

p unicorn1 = Unicorn.new("Steve")
p unicorn1.say

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    def initialize(name)
        @name = name
        @pet = "bat"
        @thirsty = true
    end
    def change_pet(new_pet)
        @pet = new_pet
    end
    def drink
        @thirsty = false
    end
end

vamp1 = Vampire.new("Vlad")
p vamp1
vamp1.change_pet("dog")
p vamp1
vamp1.drink
p vamp1

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon 
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
    end
    def eats(number)
        if number >= 4 
            @is_hungry = false
        else
            @is_hungry = true
        end
    end
end

dragon1 = Dragon.new("Frank", "Alex", "green")
p dragon1
dragon1.eats(4)
p dragon1
        


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    def initialize(name, disposition)
        @name = name
        @disposition = disposition
        @age = 0
        @is_adult = false
        @is_old = false
        if name == "Frodo"
            @has_ring = true
        else
            @has_ring = false
        end
    end


    def celebrate_birthday
        @age = @age + 1
    end
    
    
    def change_age(new_age)
        @age = new_age
        if new_age >= 33 && new_age <= 100
            @is_adult = true
        else
            @is_adult = false
        end
        if new_age >= 101
            @is_old = true
        else
            @is_old = false
        end
    end

end

hobbit1 = Hobbit.new("Frodo", "Happy")
p hobbit1

hobbit1.change_age(56)
p hobbit1

hobbit1.celebrate_birthday
p hobbit1

