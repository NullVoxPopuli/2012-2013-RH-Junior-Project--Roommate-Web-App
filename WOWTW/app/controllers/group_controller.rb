class GroupController < ApplicationController
  def new()
  	@group = Group.new
  end

  def view()
  	if !params[:id].nil?
  		@id = params[:id]
  	else 
  		redirect_to root_url
  	end
  end

  def create
    @group = Group.new params[:group]

  end
end
