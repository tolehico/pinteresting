class Pin < ActiveRecord::Base

	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	# allows a pin to have an attached file image
  attr_accessor :image_file_name
  attr_accessor :image_content_type
  attr_accessor :image_file_size
  attr_accessor :image_updated_at
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
