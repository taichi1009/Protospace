class AddNicknameToProducts < ActiveRecord::Migration
  def change
    add_column :products, :nickname, :string
  end
end
