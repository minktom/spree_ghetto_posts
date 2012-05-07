class CreateSpreePosts < ActiveRecord::Migration
  def change
    create_table :spree_posts do |t|
      t.string   :title
      t.string   :slug
      t.text     :lead
      t.text     :body
      t.boolean  :visible
      t.datetime :published_at
      t.timestamps
    end
  end
end
