require_relative 'contact.rb'

class Crm #DON'T I DARE EVER IN MY LIFE INHERIT AND REQIRE FROM THE SAME SOURCE WITHOUT CALLING SUPER (in this case we dont want to because
	# we will create a contact and a new instance of crm )

	def initialize

	end

	def main_menu
		while true
			print_main_menu
			user_selected = gets.chomp.to_i
			call_option(user_selected)
		end
	end

	def print_main_menu

	 puts '[1] Add a new contact'
	 puts '[2] Modify an existing contact'
	 puts '[3] Delete a contact'
	 puts '[4] Display all the contacts'
	 puts '[5] Search by attribute'
	 puts '[6] Exit'
	 puts 'Enter a number: '
	end


	def print_modify_menu
		puts '[1] change the first name'
		puts '[2] change the last name'
		puts '[3] change the email'
		puts '[4] change your notes'
		puts 'Enter a number:'
	end

	def search_menu(user_selected3)
		case user_selected3
		when 1 then find_byfirst
		when 2 then find_bylast
		when 3 then find_byemail
		end
	end

	def print_search_options
		puts '[1] find by first name'
		puts '[2] find by last name '
		puts '[3] find by email'
		# user_selected0 = gets.chomp.to_i
		search_menu(gets.chomp.to_i)
	end

	def modify_option(user_selected2)
		case user_selected2
		when 1 then changefirst_name
		when 2 then changelast_name
		when 3 then changeemail
		when 4 then changenote
		end
	end
end

	def find_byfirst
		puts "what is the first name of the person you are searching for?"
		firstnamese=gets.chomp
		contact = Contact.find_by(first_name: firstnamese)
		puts contact.inspect
	end

	def find_bylast
		puts "what is the last name of the person you are searching for?"
		lastnamese=gets.chomp
		contact2=Contact.find_by(last_name:lastnamese)
		puts contact2.inspect

	end

	def find_byemail
		puts "what is the email address of the person you are searching for?"
		seemail=gets.chomp
		contact3 = Contact.find_by(email:seemail)
		puts contact.inspect

	end

	def changefirst_name
		puts "enter the first name"
		firstname = gets.chomp
		contact = Contact.where(first_name:  firstname)
		puts "enter the new first name"
		new_first_name  = gets.chomp
		contact.update_all(first_name: new_first_name)
	end

	def changelast_name
		puts "enter the last name"
		lastname=gets.chomp
		contact = Contact.where(last_name:lastname)
		puts "enter the new last name"
		new_last_name = gets.chomp
		contact.update_all(last_name:new_last_name)
	end

	def changeemail
		puts "enter the email address you'd like to change"
		emailaddy=gets.chomp
		contact = Contact.where(email:emailaddy)
		puts "enter the new email address"
		new_email = gets.chomp
		contact.update_all(email:new_email)
	end

	def changenote
			puts "enter the email address of the contact you'd like to change the note for"
			emailaddy2=gets.chomp
			contact = Contact.where(email:emailaddy2)
			puts "enter the new note"
			new_note  = gets.chomp
			contact.update_all(note: new_note)
	end

	def delete_contact
		puts "enter the email of the contact you would like to delete"
		emailaddy3 = gets.chomp.to_s #to string??
		emaildel = Contact.where(email:emailaddy3)
		Contact.delete(emaildel)
	end

	def display_all_contacts
		p Contact.all
	end

	def search_by_attribute
#iterate through all contacts and return the one by its key or value?
		puts "search contact by email, first or last name"
		Contact.find_by
	end


	def modify_menu
			print_modify_menu
			user_selected = gets.to_i
			modify_option(user_selected)
	end

	def search_options
		print_search_options
	end

	def add_new_contact

		print 'Enter the First Name: '
		first_name = gets.chomp.to_s #must be saved as a string

		print 'Enter the Last Name: '
		last_name = gets.chomp.to_s

		print 'Enter and Email Address: '
		email = gets.chomp.to_s

		print 'Enter a Note: '
		note = gets.chomp.to_s
# binding.pry

	contact = Contact.create(
		first_name: first_name,
		last_name:  last_name,
		email:      email,
		note:       note
	)
	end


		def call_option(user_selected)
			case user_selected
			when 1 then add_new_contact
			when 2 then modify_menu
			when 3 then delete_contact
			when 4 then display_all_contacts
			when 5 then search_options
			when 6 then exit.
			end
		end


end

at_exit do
	ActiveRecord::Base.connection.close
end

a = Crm.new
a.main_menu
