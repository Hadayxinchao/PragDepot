class ChangePayTypeToText < ActiveRecord::Migration[7.1]
  def change
    change_column :orders, :pay_type, :string
  end
end
