class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :mail
      t.string :password
      t.string :checkpassword
      t.string :image
      t.text :introduction

      t.timestamps
    end
  end
end
