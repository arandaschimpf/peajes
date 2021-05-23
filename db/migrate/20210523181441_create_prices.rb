class CreatePrices < ActiveRecord::Migration[6.1]
  def change
    create_table :prices do |t|
      t.references :car, null: false, foreign_key: true
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
