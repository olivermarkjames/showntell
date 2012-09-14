class Slide < ActiveRecord::Base
  attr_accessible :content, :micropost_id
  belongs_to :micropost

  validates :content, :length => { :maximum => 280 }
end
