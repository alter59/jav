class RemoveStudioFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :studio, :string
  end
end
