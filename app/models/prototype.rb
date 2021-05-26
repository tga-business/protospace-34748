class Prototype < ApplicationRecord

  validates :title,      presence: true
  validates :cacth_copy, presence: true
  validates :concept,    presence: true
  validates :image,      presence: true

  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy 
end

#プロトタイプが削除したら紐付いているCommentも削除するdependent: :destroy を使用すること