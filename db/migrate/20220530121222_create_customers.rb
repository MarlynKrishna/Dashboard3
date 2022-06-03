class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :phone_num
      t.string :state

      t.timestamps
    end
  end
end
