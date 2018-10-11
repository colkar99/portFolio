class Portfolio < ApplicationRecord
	has_many :technologies
	accepts_nested_attributes_for :technologies,
									reject_if: lambda { |attrs| attrs['name'].blank? }
	#include Placeholder
	validates_presence_of :title,:subtitle,:body

	#this lines for image up
	mount_uploader :thumb_image, PortfolioUploader
	mount_uploader :main_image, PortfolioUploader

	
	def self.angular
		where(subtitle: 'Angular')
	end

	def self.by_position
		order("position ASC")
	end

	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails')}

	#after_initialize :set_defaults
	def self.select_all
		all
	end
	
end

