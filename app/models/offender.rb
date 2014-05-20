class Offender < ActiveRecord::Base
	attr_accessible :name, :gender, :age, :address, :mobile_no, :occupation, :religion, :educational_background, :crimes, :father_name, :mother_name, :father_occupation, :mother_occupation, :family_income, :psychological_status, :image
	mount_uploader :image, ImageUploader
	validates :name, presence: true
end
