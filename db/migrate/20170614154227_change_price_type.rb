class ChangePriceType < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :price_in_cents, :decimal
  end
end
