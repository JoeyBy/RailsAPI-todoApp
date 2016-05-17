class RemoveTasksTable < ActiveRecord::Migration
  def change
    drop_table :task_tables
  end
end
