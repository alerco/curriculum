class Note < ActiveRecord::Base
	validates :name, :presence => true
	has_attached_file :cv
end
