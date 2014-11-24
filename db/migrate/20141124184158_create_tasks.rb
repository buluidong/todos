require_relative '../../config/application'

class CreateTasks <ActiveRecord::Migration
   def change
   create_table :tasks do |t|
      t.belongs_to :list
      t.string :desc
      t.boolean :completed
      t.timestamps
    end
  end
end
