class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.datetime :created_at
      t.datetime :deleted_at

      t.timestamps null: false
    end
  end
end
