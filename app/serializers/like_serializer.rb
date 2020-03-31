class LikeSerializer < ActiveModel::Serializer
  attributes :id, :user
  has_one :user
  has_one :card
end
