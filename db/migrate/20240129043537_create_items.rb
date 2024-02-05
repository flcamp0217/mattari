class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.date :day
      t.string :item_name
      t.integer :category_id
      t.integer :money
      t.references :user,           null: false, foreign_key: true
      t.timestamps
    end
  end
end
