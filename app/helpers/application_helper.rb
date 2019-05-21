module ApplicationHelper

	def flash_message(type, text)
    flash[type] ||= []
    flash[type] << text
	end

	def render_flash
  	rendered = []
  	flash.keys do |type|
    	flash[type].each do |m|
      	rendered << render(:partial => 'partials/flash', :locals => {:type => type, :message => m}) unless m.blank?
    	end
  	end
  	rendered.join('<br/>')
	end

end
