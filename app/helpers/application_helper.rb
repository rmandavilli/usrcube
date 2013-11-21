module ApplicationHelper

	# returns the full title on a per-page basis
	def full_page_title(page_title)
		base_title = "USRcube"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
	
	# show form input parameters - good debugging function
	def show_form_params
		html = "<div style='border:2px red solid; margin:10px; padding:10px;'>"
		html += '<heading>Form Params</heading><br/>'
		params.each do |key, value|
			html += "#{key}: #{value}<br/>" if (key != 'authenticity_token' && key != 'utf8')
		end
		html += '</div>'
		return html.html_safe
	end

  def bootstrap_class_for flash_type
    case flash_type
      when :success
        "alert-success"
      when :notice
        "alert-info"
      when :alert
        "alert-warning"
      when :error
        "alert-danger"
      else
        flash_type.to_s
    end
  end

end
