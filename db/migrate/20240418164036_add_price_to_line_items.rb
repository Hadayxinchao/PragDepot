class AddPriceToLineItems < ActiveRecord::Migration[7.1]
  def up
    add_column :line_items, :price, :decimal, precision: 8, scale: 2

    LineItem.all.each do |line_item|
      line_item.price = line_item.product.price
      line_item.save!
    end
  end

  def down
    remove_column :line_items, :price
  end
end
