class AddStudioIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :studio_id, :integer
  end
end
