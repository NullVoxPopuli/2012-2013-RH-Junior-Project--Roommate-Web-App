class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.column :admin, :string
    end
  end
end
