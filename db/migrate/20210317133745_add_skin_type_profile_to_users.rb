class AddSkinTypeProfileToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :skin_type, :string
    
    add_column :users, :profile, :text
  end
end
