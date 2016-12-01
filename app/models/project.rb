class Project < ApplicationRecord
	after_initialize :set_defaults

	has_many :tasks

	validates_presence_of :title, :description, :percent_complete
	
	scope :almost_completed, -> {where('percent_complete > 75.0')}
	scope :still_needs_more_work, -> { where('percent_complete <75.0') }

	def set_defaults
		self.percent_complete ||= 0.0
	end


end
