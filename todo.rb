# require_relative 'config/application'

# puts "Put your application code in #{File.expand_path(__FILE__)}"
# require_relative 'config/application'
# require_relative 'app/models/task'
# require_relative 'app/models/list'
require_relative 'app/controllers/tasks_controller'


# puts "Put your application code in #{File.expand_path(__FILE__)}"
args = ARGV

case args[0]
  when "list" then TasksController.list
  when "delete" then TasksController.delete(args[1])
    TasksController.list
  when "complete" then TasksController.complete(args[1])
    TasksController.list
  when "add" then
    args.shift
    sentence = args.join(" ")
    TasksController.add(sentence)
    TasksController.list
end
