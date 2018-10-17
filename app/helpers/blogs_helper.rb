module BlogsHelper
	def gravatar_hepler user
		image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 50
	end
end
