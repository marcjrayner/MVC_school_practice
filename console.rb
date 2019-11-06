require('pry-byebug')
require_relative('./models/student')

student1= Student.new({
  'first_name'=>"Draco",
  'second_name'=>"Malfoy",
  'house'=>"Slytherin",
  'age'=>15,
  })
student1.save()
