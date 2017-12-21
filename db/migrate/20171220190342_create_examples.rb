class CreateExamples < ActiveRecord::Migration[5.1]
  def change
    create_table :examples do |t|
      t.string :purchaser_name
      t.string :item_description
      t.numeric :item_price
      t.integer :purchase_count
      t.string :merchant_address
      t.string :merchant_name
      t.timestamps
    end
  end
end
