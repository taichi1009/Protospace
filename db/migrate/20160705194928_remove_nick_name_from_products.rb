class RemoveNickNameFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :nickname, :string
  end
end
