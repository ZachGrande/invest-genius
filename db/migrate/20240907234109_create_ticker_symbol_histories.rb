class CreateTickerSymbolHistories < ActiveRecord::Migration[7.2]
  def change
    create_table :ticker_symbol_histories, id: :uuid do |t|
      t.references :ticker_symbol, null: false, foreign_key: true, type: :uuid
      t.decimal :price, null: false

      t.timestamps
    end
  end
end
