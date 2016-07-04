class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :catchcopy
      t.text :concept
      t.timestamps
    end
  end
end
