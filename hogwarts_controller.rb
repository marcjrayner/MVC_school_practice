require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/Student.rb')
also_reload('./models/*')


get '/students' do
  @students = Student.all
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
