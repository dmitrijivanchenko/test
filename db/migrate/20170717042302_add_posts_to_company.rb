class AddPostsToCompany < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :posts, :company
  end
end
