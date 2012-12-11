class HomeController < ApplicationController
  def index
  	@welcomeMsg = "Welcome to our new app!"
  	@ProjectName = "Who Owes What To Whom"
  end
end
