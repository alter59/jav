class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :studio
      t.string :title
      t.string :thumb
      t.string :model
      t.string :res
      t.string :time

      t.timestamps null: false
    end
  end
end
