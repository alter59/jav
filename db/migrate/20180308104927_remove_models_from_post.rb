class RemoveModelsFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :models, :string
  end
end
