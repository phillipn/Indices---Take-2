class AddCompositeIndex < ActiveRecord::Migration
  def change
    remove_index :reviews, :movie_id
    remove_index :reviews, :moviegoer_id
    add_index :reviews, [:movie_id, :moviegoer_id]
  end
end
