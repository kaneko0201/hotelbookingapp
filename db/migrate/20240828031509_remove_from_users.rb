class RemoveFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :user_mail, :string
    remove_column :users, :user_password, :string
    remove_column :users, :user_checkpassword, :string
  end
end
