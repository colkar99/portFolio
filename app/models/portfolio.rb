class Portfolio < ApplicationRecord
	has_many :technologies
	accepts_nested_attributes_for :technologies,
									reject_if: lambda { |attrs| attrs['name'].blank? }
	include Placeholder
	validates_presence_of :title,:subtitle,:main_image,:body,:thumb_image

	def self.angular
		where(subtitle: 'Angular')
	end

	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails')}

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '600',width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '350',width: '200')
	end
	def self.select_all
		all
	end
	
end
