class Listing < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :large => "600x600>", :medium => "200x200>", :thumb => "75x75#" }, :default_url => "missing_:style.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
