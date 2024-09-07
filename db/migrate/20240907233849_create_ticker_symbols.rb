class CreateTickerSymbols < ActiveRecord::Migration[7.2]
  def change
    create_table :ticker_symbols do |t|
      t.string :name

      t.timestamps
    end
  end
end
