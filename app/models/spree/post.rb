class Spree::Post < ActiveRecord::Base

  attr_accessible :title, :slug, :body, :lead, :visible, :locale, :published_at,
                  :meta_title, :meta_keywords, :meta_description

  validates_presence_of :title, :slug, :body, :lead, :published_at, :locale
  validates_uniqueness_of :slug
    
  scope :published, lambda { where("visible = ? AND published_at < ?", true, Time.zone.now) }

end
