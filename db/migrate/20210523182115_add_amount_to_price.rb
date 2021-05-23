class AddAmountToPrice < ActiveRecord::Migration[6.1]
  def change
    add_column :prices, :amount, :float
  end
end
