class ContactController < ApplicationController
  
  def index
  end

	def create

		contact = Contact.new(contact_params)
		contact.save

		redirect_to root_path, notice: "Thanks for contacting us.  We'll get back to you as soon as we can!"

	end



	private

	def contact_params
		params.required(:contact).permit(:name, :email, :subject, :message)
	end

end
