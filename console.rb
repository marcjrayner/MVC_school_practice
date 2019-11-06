require('pry-byebug')
require_relative('./models/student')

Student.delete_all

student1= Student.new({
  'first_name'=>"Draco",
  'second_name'=>"Malfoy",
  'house'=>"Slytherin",
  'age'=>15,
  })
student2= Student.new({
  'first_name'=>"Harry",
  'second_name'=>"Potter",
  'house'=>"Gryffindor",
  'age'=>15,
  })
student3= Student.new({
  'first_name'=>"Ron",
  'second_name'=>"Weasley",
  'house'=>"Gryffindor",
  'age'=>15,
  })
student1.save()
student2.save()
student3.save()


binding.pry
nil
