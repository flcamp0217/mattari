class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.date :day
      t.string :item_name
      t.integer :category_id
      t.timestamps
    end
  end
end
