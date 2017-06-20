@garage = []


# Story: As a programmer, I can make a vehicle.
# Hint: Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.
class Vehicle
  def set_vehicle (name)
    @my_vehicle = name
  end

  def get_vehicle ()
    @my_vehicle
  end

  def initialize
    @lights_on = false
    @turn_left = false
    @turn_right = false
    @@speed = 0
  end

  def lights_on
    @lights_on = !@lights_on
  end

# Story: As a programmer, I can signal left and right. Turn signals starts off.
  def turn_left
    @turn_left = !@turn_left
  end

  def turn_right
    @turn_right = !@turn_right
  end

# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.

end

# Story: As a programmer, I can make a car.
# Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.
class Car < Vehicle
  def set_vehicle (name)
    @my_car = name
  end

  def get_vehicle ()
    @my_car
  end

  # Story: As a programmer, I can tell how many wheels a car has; default is four.
  # Hint: initialize the car to have four wheels, then create a method to return the number of wheels.
  def initialize year
    @wheels = 4
    # Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
    # Hint: Make model year part of the initialization.
    # def initialize
    @model_year = year
  end

  def wheels
    @wheels
  end

  def model_year
    @model_year
  end



end

# a_car = Car.new()
# a_car.set_vehicle('gruby')
#
# puts a_car.get_vehicle()
# puts a_car.wheels

# Story: As a programmer, I can make a Tesla car.
# Hint: Create an variable called my_tesla which is of class Tesla which inherits from class Car.
class Tesla < Car

  def make_tesla name
    @my_tesla = name
  end

  def get_tesla
    @my_tesla
  end

  def speed
    @@speed = @@speed + 10
  end

  def break
    @@speed = @@speed - 7
  end
  # Story: As a programmer, I can call upon a car to tell me all it's information.
  # Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.
  def to_s
    "#{@@speed} #{@model_year} #{@lights_on} #{@turn_left} #{@turn_right}"
  end
end
#
# a_tesla = Tesla.new()

# Story: As a programmer, I can make a Tata car.

class Tata < Car

  def make_tata name
    @my_tata = name
  end

  def get_tata ()
    @my_tata
  end

  def speed
    @@speed = @@speed + 2
  end

  def break
    @@speed = @@speed - 1.25
  end

end

# a_tata = Tata.new()

# puts a_tata.get_tata()
# puts a_tata.wheels

# Story: As a programmer, I can make a Toyota car.
class Toyota < Car

  def make_toyota name
    @my_toyota = name
  end

  def get_toyota
    @my_toyota
  end

  def speed
    @@speed = @@speed + 7
  end

  def break
    @@speed = @@speed - 5
  end

end

# Story: As a programmer, I can keep a collection of two of each kind of vehicle, all from different years.
# Hint: Create two of each vehicles, all from different model years, and put them into an Array.

def create_collection_tesla
  puts "Enter a name for the Tesla"
  tesla_name = gets.chomp
  puts "Enter a year for the Tesla"
  tesla_year = gets.chomp
  car1 = Tesla.new(tesla_year)
  car1.make_tesla tesla_name
  #@garage << {"#{car1.get_tesla}" => "#{car1.model_year}"}
  # or
  @garage << car1
end

def create_collection_tata
  puts "Enter a name for the Tata"
  tata_name = gets.chomp
  puts "Enter a year for the Tata"
  tata_year = gets.chomp
  car1 = Tata.new(tata_year)
  car1.make_tata tata_name
  #@garage << {"#{car1.get_tesla}" => "#{car1.model_year}"}
  # or
  @garage << car1
end

def create_collection_toyota
  puts "Enter a name for the Toyota"
  toyota_name = gets.chomp
  puts "Enter a year for the Toyota"
  toyota_year = gets.chomp
  car1 = Toyota.new(toyota_year)
  car1.make_toyota toyota_name
  #@garage << {"#{car1.get_tesla}" => "#{car1.model_year}"}
  # or
  @garage << car1
end

# As a programmer, I can sort my collection of cars based on model year.
@garage.sort_by {|car| car.model_year}

# As a programmer, I can sort my collection of cars based on model.
@garage.sort_by {|car| car.class.to_s}

# As a programmer, I can sort my collection of cars based on model and then year.
@garage.sort_by {|car| [car.class.to_s, car.model_year]}
