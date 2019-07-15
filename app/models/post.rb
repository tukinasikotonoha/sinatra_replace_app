class Post < ApplicationRecord
  # postは1人のユーザーに所属する
  belongs_to :user

  # 画像アップロード機能
  mount_uploader :product_image, ProductimageUploader #さっき作ったクラス名！

  # 登録時のバリデーション
  validates :title, presence: true
  validates :category, presence: true
  validates :product_image, presence: true

end
