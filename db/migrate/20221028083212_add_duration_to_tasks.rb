class AddDurationToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :duration, :datetime , null: false
  end
end
