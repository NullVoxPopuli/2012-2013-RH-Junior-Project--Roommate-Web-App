class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.column :name, :string
      t.column :cost, :float
      t.timestamps
    end
  end
end
