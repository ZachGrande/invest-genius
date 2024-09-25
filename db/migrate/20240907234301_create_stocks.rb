class CreateStocks < ActiveRecord::Migration[7.2]
  def change
    create_table :stocks, id: :uuid do |t|
      t.references :ticker_symbol, null: false, foreign_key: true, type: :uuid
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.decimal :purchased_price, null: false
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
