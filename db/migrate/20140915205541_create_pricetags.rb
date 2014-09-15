class CreatePricetags < ActiveRecord::Migration
  def change
    create_table :pricetags do |t|
      t.integer :amount
      t.string :description

      t.timestamps
    end
  end
end
