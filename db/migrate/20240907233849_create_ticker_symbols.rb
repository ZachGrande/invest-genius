class CreateTickerSymbols < ActiveRecord::Migration[7.2]
  def change
    create_table :ticker_symbols, id: :uuid do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
