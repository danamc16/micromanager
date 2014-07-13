class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
     add_index :groups, [:title,:user_id, :created_at]
  end
end
