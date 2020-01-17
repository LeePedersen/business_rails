# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all
Employee.destroy_all
Division.destroy_all
50.times do |index|
  Project.create!(name: Faker::Name.first_name)
end
p "Created #{Project.count} projects"

division_list = ["HR", "Quality Control", "IT", "Public Relations"]

division_list.each do |division|
  new_division = Division.create!(name: division)
  20.times do |index|
    employee = new_division.employees.new(name: Faker::Name.name, age: Faker::Number.within(range = 18.00..75.00))
    employee.save
  end
end
