class AddSupportOneToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :support_one, :string
  end
end
