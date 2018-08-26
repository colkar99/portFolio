module DefaultPageContent
	extend ActiveSupport::Concern

	included do
		before_action :set_page_defaults
	end
	def set_page_defaults
		@page_title = "Karthik Portfolio | My Portfolio Website"
		@seo_keywords = "Karthik raj portfolio"
	end
end