class Stock < ApplicationRecord
  belongs_to :ticker_symbol
  belongs_to :user

  validates :quantity, numericality: { greater_than: 0 }
end
