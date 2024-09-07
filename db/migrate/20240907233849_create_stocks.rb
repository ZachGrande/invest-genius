class CreateStocks < ActiveRecord::Migration[7.2]
  def change
    create_table :stocks do |t|
      t.references :ticker_symbol, null: false, foreign_key: true
      t.decimal :purchased_price
      t.integer :quantity

      t.timestamps
    end
  end
end
