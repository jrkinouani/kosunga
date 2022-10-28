class AddSupportTwoToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :support_two, :string
  end
end
