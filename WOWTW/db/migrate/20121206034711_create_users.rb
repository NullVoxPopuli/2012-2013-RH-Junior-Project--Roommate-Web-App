class CreateUsers < ActiveRecord::Migration
  def change
      create_table :users do |t|
    	t.column :username, :string
    	t.column :password, :string
  	end
  end
end
