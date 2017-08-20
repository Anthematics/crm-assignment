require 'pry'
class Contact
	@@allcontacts = [{first_name: @first_name, last_name: @last_name, email: @email, note: @note} ]
	@@accountnumbers = 1000

	# This method should initialize the contact's attributes

	def initialize (first_name,last_name,email,note)
		@accountid = @@accountnumbers+=1
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end



	#create method works (tested)
	def self.create(first_name,last_name,email,note)
		acreate=Contact.new(first_name,last_name,email,note)
		@@allcontacts << acreate #shovel into all contacts array
		acreate
	end

	#readers - so values can be accessed.
	def first_name
		@first_name
	end

	def last_name
		@last_name
	end

	def email
		@email
	end

	def note
		@note
	end
	# Writer methods (to allow changes to be made )

	# This method should return all of the existing contacts (doesnt seem to be culprit )
	def self.all
		@@allcontacts
			return @@allcontacts
	end

	# This method should accept an id as an argument
	# and return the contact who has that id
	def self.find
		user=gets.chomp
			accounts.each do|user|
				if user=@@accountnumbers
					return user
			end

	end

	# This method should allow you to specify
	# (writer)
	# 1. which of the contact's attributes you want to update
	# 2. the new value for that attribute
	# and then make the appropriate change to the contact
	def update

	end

	# findby #nosyntax errors - needs testing
	def self.find_by
			user=gets.chomp
				accounts.each do |user|
				 if user == @first_name | @last_name | @email #shouldinteratethroughthearrayandreturnvaluesthat
					 return user
				 end
	end

#delete all - no errors plez test.
	def self.delete_all
		@@allcontacts.clear
	end

#no errors plez test.
	def full_name
		full_name= @first_name+ @last_name
	end

	# This method should delete the contact
	# HINT: Check the Array class docs for built-in methods that might be useful here
	def delete
		 user=gets.chomp
			accounts.each do|user|
				@@allcontacts.slice(user)  == @first_name| @last_name| @email
			end
	end

end

jason=Contact.create("jason","pimp","jason@pimp.pimp","thisguy")
matthew=Contact.create("matthew","alsokindofcool","wer@g.com","brother")
self.inspect
