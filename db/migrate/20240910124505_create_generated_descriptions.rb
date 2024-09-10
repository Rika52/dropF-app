class CreateGeneratedDescriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :generated_descriptions do |t|
      t.text :description
      t.string :status
      t.string :input_data
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
