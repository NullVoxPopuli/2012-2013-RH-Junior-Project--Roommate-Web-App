class Group < ActiveRecord::Base
	include ActiveModel::Validations
	attr_accessible :name, :admin
	#validates_with GroupValidator
end