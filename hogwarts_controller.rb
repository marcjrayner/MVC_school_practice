require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/Student.rb')
require_relative('./models/House.rb')
also_reload('./models/*')


get '/students' do
  @students = Student.all
  @houses = House.all
  erb(:students)
end

get '/students/new' do
  erb(:new)
end

post '/students' do
  @student = Student.new(params)
  @student.save
  erb(:create)
end
