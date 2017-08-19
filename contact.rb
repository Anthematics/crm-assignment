class Contact

@@allcontacts = [{first_name: @first_name, last_name: @last_name, email: @email, note: @note} ]

	# This method should initialize the contact's attributes
	def initialize (first_name,last_name,email,note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note


	end


# username = gets.chomp
# user = {
#   username: username,
#   pin: 10,
#   balance: 100
# }
# puts "Your account is: #{user}"

	# This method should call the initializer,
	# store the newly created contact, and then return it

	def self.create(first_name,last_name,email,note)
		create=Contact.new(first_name,last_name,email,note)
		@@allcontacts << create #shovel into all contacts array
		create
	end

	# This method should return all of the existing contacts
	def self.all
		@@allcontacts
	end
	#
	# # This method should accept an id as an argument
	# # and return the contact who has that id
	# 		def self.find(first_name,last_name,email)
	# 			puts "who are we looking for?"
	# 			 user=gets.chomp
	# 					accounts.each do |user|
	# 						return user if user == @first_name, @last_name, @email #shouldinteratethroughthearrayandreturnvaluesthat
	# 					end
	# 				end
	# 			end
	# 		end
	#

	# This method should allow you to specify
	# 1. which of the contact's attributes you want to update
	# 2. the new value for that attribute
	# and then make the appropriate change to the contact
	def update

	end

	# This method should work similarly to the find method above
	# but it should allow you to search for a contact using attributes other than id
	# by specifying both the name of the attribute and the value
	# eg. searching for 'first_name', 'Betty' should return the first contact named Betty
	def self.find_by

	end

	# This method should delete all of the contacts
	def self.delete_all

	end

	def full_name
		# @first_name  @last_name
	end

	# This method should delete the contact
	# HINT: Check the Array class docs for built-in methods that might be useful here
	def delete

	end



end

jason=Contact.create("jason","pimp","jason@pimp.pimp","thisguy")
puts jason.inspect
