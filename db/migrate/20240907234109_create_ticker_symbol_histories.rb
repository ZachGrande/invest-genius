class CreateTickerSymbolHistories < ActiveRecord::Migration[7.2]
  def change
    create_table :ticker_symbol_histories do |t|
      t.references :ticker_symbol, null: false, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
