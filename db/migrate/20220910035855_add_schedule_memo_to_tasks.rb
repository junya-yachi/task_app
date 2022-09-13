class AddScheduleMemoToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :schedule_memo, :string
  end
end
