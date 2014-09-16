module ApplicationHelper
	def glyph(icon)
		"<span class='glyphicon glyphicon-#{icon}' style='font-size:24px;'></span>".html_safe
	end
  def resource_name
    :user
  end
  def resource
    @resource ||= User.new
  end
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
