module ApplicationHelper
	def login_helper style
	  if current_user.is_a?(GuestUser)
       (link_to 'Register' , new_user_registration_path, class: style) +
        " ".html_safe +
        (link_to 'Login' , new_user_session_path, class: style)
       else 
        link_to 'Logout' , destroy_user_session_path, method: :delete , class: style

       end 
	end
	def source_helper(layout_name)
		if session[:source].present?
   			greeting = "Thank for comming from  #{session[:source]} and your in #{layout_name}"
   			content_tag(:p, greeting, class: "session-source") 
  		end 
	end
  def copyright_generator
    ViewToolPortfolio::Renderer.copyright "karthik", "All rights reserved"
  end
end
