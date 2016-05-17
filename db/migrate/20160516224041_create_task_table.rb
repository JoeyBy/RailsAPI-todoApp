class CreateTaskTable < ActiveRecord::Migration
  def change
    create_table :task_tables do |t|
        t.string :description, null: false
        t.date :due_date, null: false
        
        t.timestamps null: false
    end
  end
end
