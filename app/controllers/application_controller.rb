class ApplicationController < ActionController::Base

  helper_method :body_classes

  def body_classes
    @body_classes ||= []
    @body_classes << "#{browser.name}_#{browser.version}".downcase
    @body_classes << "#{browser.to_s}"
    @body_classes << "ms-edge" if request.user_agent.present? && request.user_agent.include?("Edge/")
    #@body_classes << "visitor" unless user_signed_in?
    @body_classes << "mobile" if browser.mobile?
    @body_classes << params[:controller].parameterize if params[:controller].present?
    @body_classes << params[:action] if params[:action].present?

    @body_classes.join(" ")
  end

end
