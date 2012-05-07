class Spree::Post < ActiveRecord::Base

  attr_accessible :title, :slug, :body, :lead, :visible, :published_at

  validates_presence_of :title, :slug, :body, :lead, :published_at
  validates_uniqueness_of :slug
    
  scope :published, lambda { where("visible = ? AND published_at < ?", true, Time.zone.now) }

end
