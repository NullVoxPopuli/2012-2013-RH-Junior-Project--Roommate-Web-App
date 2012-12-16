class Group < ActiveRecord::Base
	attr_accessible :name,  :admin
	validates_with GroupValidator
end

class GroupValidator < ActiveModel :: Validator 
	def validate(group)
		if !group.name || gr oup.name.length < 2
			errors.add(:name, "Invalid Name Entered")
		end
		if !group.admin || validate_user(group.admin)
			errors.add(:admin , "User specified as admin not found")
	end

	def validate_user(user)
		#username field may have to be changed.
		return User.where("username = ?", user).limit(1).exists?
	end
end