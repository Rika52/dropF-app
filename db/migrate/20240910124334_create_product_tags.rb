class CreateProductTags < ActiveRecord::Migration[7.1]
  def change
    create_table :product_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
