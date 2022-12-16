class AddDetailsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :password, :string
    add_column :articles, :user_name, :string
    add_column :articles, :date_of_birth, :date
  end
end
