class PaymentType < ApplicationRecord
  has_many :orders

  def self.names
    pluck(:name)
  end
end
