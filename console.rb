require('pry-byebug')
require_relative('./models/student')
require_relative('./models/house')

Student.delete_all
House.delete_all

house1 = House.new({'name'=>'Gryffindor','logo_url'=>'https://s1.thcdn.com/productimg/1600/1600/12024628-1464653879742026.jpg'})
house2 = House.new({'name'=>'Slytherin','logo_url'=>'https://www.logolynx.com/images/logolynx/53/5390e974544de6279c4d9cb6253e3a2c.jpeg'})
house3 = House.new({'name'=>'Ravenclaw','logo_url'=>'https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1280x1280/products/88363/91130/Harry-Potter-Ravenclaw-Crest-Official-wall-mounted-cardboard-cutout-buy-now-at-star__86173.1507640763.jpg?c=2?imbypass=on'})
house4 = House.new({'name'=>'Hufflepuff','logo_url'=>'https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1280x1280/products/88364/91134/Harry-Potter-Hufflepuff-Crest-Official-wall-mounted-cardboard-cutout-buy-now-at-star__21122.1507640936.jpg?c=2?imbypass=on'})
house1.save()
house2.save()
house3.save()
house4.save()

student1= Student.new({
  'first_name'=>"Draco",
  'second_name'=>"Malfoy",
  'house_id'=>house2.id,
  'age'=>15,
  })
student2= Student.new({
  'first_name'=>"Harry",
  'second_name'=>"Potter",
  'house_id'=>house1.id,
  'age'=>15,
  })
student3= Student.new({
  'first_name'=>"Ron",
  'second_name'=>"Weasley",
  'house_id'=>house1.id,
  'age'=>15,
  })
student1.save()
student2.save()
student3.save()


binding.pry
nil
