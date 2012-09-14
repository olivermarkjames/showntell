class Slide < ActiveRecord::Base
	image_accessor :cover_image_uid
  attr_accessible :content, :cover_image, :cover_image_uid,  :micropost_id
end
