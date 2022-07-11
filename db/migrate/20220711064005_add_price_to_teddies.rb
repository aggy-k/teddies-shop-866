class AddPriceToTeddies < ActiveRecord::Migration[6.1]
  def change
    add_monetize :teddies, :price
  end
end
