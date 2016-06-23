class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :CodeName
      t.boolean :CEO
      t.text :Story

      t.timestamps null: false
    end
  end
end
