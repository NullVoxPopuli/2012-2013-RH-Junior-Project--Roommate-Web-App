class GroupValidator < ActiveModel :: Validator 
	def validate(group)
		if group.name == "" || group.name.length < 2
			group.errors[:name] << 'Invalid Name Entered'
		end
		if group.admin == "" || validate_user(group.admin)
			group.errors[:admin] << 'User specified as admin not found'
		end
	end

	def validate_user(user)
		#username field may have to be changed.
		User.where("username = ?", user).limit(1).exists?
	end
end