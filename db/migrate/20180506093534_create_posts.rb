class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.text :tag
      t.string :user_name

      t.timestamps null: false
    end
  end
end
