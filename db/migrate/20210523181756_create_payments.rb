class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.references :booth, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :price, null: false, foreign_key: true
      t.float :amount

      t.timestamps
    end
  end
end
