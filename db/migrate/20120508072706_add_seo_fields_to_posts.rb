class AddSeoFieldsToPosts < ActiveRecord::Migration
  def change
    add_column :spree_posts, :meta_title, :string
    add_column :spree_posts, :meta_description, :string
    add_column :spree_posts, :meta_keywords, :string
  end
end
