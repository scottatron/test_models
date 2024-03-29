class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :stripe_card_id
      t.boolean :admin

      t.timestamps null: false
    end
  end
end
