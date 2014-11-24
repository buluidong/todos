require_relative '../../config/application'
require_relative '../models/task'
require_relative '../models/list'

class TasksController < ActiveRecord::Base

  def self.list
    Task.all.each do |x|
      if x.completed == true
        puts "#{x.id}" + ") " + "#{x.desc}" + "[X]"
      else
        puts "#{x.id}" + ") " + "#{x.desc}" + "[ ]"
      end
    end
  end

  def self.add(sentence)
    Task.create(desc: sentence, completed: false)
  end

  def self.delete(id)
    Task.destroy(id)
  end

  def self.complete(item)
    x = Task.find(item)
    x.completed = true
    x.save
  end

end