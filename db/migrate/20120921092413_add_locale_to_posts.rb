class AddLocaleToPosts < ActiveRecord::Migration
  def change
    add_column :spree_posts, :locale, :string, :limit => 5, :default => 'en'
  end
end
