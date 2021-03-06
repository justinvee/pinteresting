class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" } # Will create two versions of image size
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"] # Requirement for paperclip to work


	validates :description, presence: true
	validates :image, presence: true
end
