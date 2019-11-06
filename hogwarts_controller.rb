require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/Student.rb')
also_reload('./models/*')


get '/students' do
  @students = Student.all
  erb(:students)
end
