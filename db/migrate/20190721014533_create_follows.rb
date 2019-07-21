class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.integer :followed_user_id
      t.integer :following_user_id
      t.timestamps
    end
  end
end
