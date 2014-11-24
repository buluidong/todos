require 'faker'
require_relative '../app/models/list'
require_relative '../app/models/task'

new_list = List.create(title: "Coding time") if !(List.first)

for i in 1..10
  sentence = Faker::Lorem.sentence
  Task.create(desc: sentence, completed: false)
end
