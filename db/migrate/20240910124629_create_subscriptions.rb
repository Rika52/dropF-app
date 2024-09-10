class CreateSubscriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.string :price
      t.string :active
      t.string :description_limit
      t.string :billing_interval

      t.timestamps
    end
  end
end
