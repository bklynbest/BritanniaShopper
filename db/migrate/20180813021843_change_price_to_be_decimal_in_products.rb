class ChangePriceToBeDecimalInProducts < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :price, :decimal, precision: 5, scale: 2, default: "0.0"
  end
end
