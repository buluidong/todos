require_relative '../../config/application'
require_relative 'task'

class List < ActiveRecord::Base
  has_many :tasks
end
