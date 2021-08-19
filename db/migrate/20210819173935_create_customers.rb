class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :fulll_name
      t.string :avatar_url

      t.timestamps
    end
  end
end
