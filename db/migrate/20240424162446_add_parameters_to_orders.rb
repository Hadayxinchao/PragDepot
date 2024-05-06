class AddParametersToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :routing_number, :number
    add_column :orders, :account_number, :number
    add_column :orders, :credit_card_number, :number
    add_column :orders, :expiration_date, :datetime
    add_column :orders, :po_number, :number
  end
end
