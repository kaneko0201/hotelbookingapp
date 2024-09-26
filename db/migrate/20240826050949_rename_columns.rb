class RenameColumns < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :name, :user_name
    rename_column :users, :mail, :user_mail
    rename_column :users, :password, :user_password
    rename_column :users, :checkpassword, :user_checkpassword
    rename_column :users, :image, :user_image
    rename_column :users, :introduction, :user_introduction
    
  end
end
