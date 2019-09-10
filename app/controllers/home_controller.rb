class HomeController < ApplicationController

  def sitemap
 		headers['Content-Type'] = 'application/xml'
		render :layout => false
  end

end
