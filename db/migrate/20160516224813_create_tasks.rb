class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
        t.string :description, null: false
        t.date :due_date, null: false

        t.timestamps null: false
    end
  end
end
