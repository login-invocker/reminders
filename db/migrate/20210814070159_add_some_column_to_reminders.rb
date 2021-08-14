class AddSomeColumnToReminders < ActiveRecord::Migration[6.1]
  def change
    add_column :reminders, :image, :text  
    add_column :reminders, :title, :string  
    add_column :reminders, :description, :text  
  end
end
