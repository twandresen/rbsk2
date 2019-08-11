class ContactMailer < ApplicationMailer

	default from: "twandresen@gmail.com"

	def new_contact(contact)
		@contact = contact
		mail(to: 'twandresen@gmail.com', subject: "Contact From RBSKLaw.com")
	end

end
