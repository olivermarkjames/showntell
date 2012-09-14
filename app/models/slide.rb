class Slide < ActiveRecord::Base
  attr_accessible :content, :micropost_id, :image, :remote_image_url
  belongs_to :micropost

  validates :content, :length => { :maximum => 280 }
  mount_uploader :image, ImageUploader
end
