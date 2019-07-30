# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

	def  contact_preview
		ContactMailer.new_contact(Contact.first) 
	end

end
