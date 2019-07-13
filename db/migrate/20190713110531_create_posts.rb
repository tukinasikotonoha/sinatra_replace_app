class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      # ここから
      t.string :title
      t.string :category
      t.string :product_image
      t.string :product_link
      # ここまで
      t.timestamps
    end
  end
end
