module ApplicationHelper
	def login_helper style = ""
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

  def nav_items
    [
      {
        url: root_path,
        title:'Home'
      },{
        url: about_me_path,
        title:'About me'
      },{
        url: contact_path,
        title:'Contact'
      },{
        url: blogs_path,
        title:'Blogs'
      },{
        url: portfolios_path,
        title:'Portfolios'
      },{
        url: tech_news_path,
        title:'Tech News'
      }
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''
    nav_items.each do |nav| 
     nav_links << "<#{tag_type}><a href='#{nav[:url]}' class='#{style} #{active? nav[:url]} '>#{nav[:title]}</a></#{tag_type}>"
    end
    nav_links.html_safe 
  end
  def active? path
   "active" if current_page? path    
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])
    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
      js add_gritter(msg, title: "Jordan Hudgens Portfolio", sticky: false)
  end
end
