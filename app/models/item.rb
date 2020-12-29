class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category_id
  belongs_to_active_hash :type_id
  belongs_to :user

  #空の投稿を保存できないようにする
  validates :date, :value, :category, :type, presence: true

  #選択が「--」のままになっていないか
  with_options numericality: { other_than: 1 } do
    validates :category_id, :type_id
  end
end
