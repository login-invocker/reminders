class CreateReminders < ActiveRecord::Migration[6.1]
  def change
    create_table :reminders do |t|
      
      t.timestamps
    end
  end
end
