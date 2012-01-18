class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.datetime :purchase_date
      t.decimal :total_amount
      t.integer :quantity
      t.string :status
      t.integer :user_id
      
      t.timestamps
    end
  end
end
