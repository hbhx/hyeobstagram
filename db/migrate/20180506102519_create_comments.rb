class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :user_name
      t.text :content
      t.references :post, foreign_key: true

      t.timestamps null: false
    end
  end
end
