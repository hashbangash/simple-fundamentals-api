class CommentSerializer < ActiveModel::Serializer
  attributes :id, :commentText
  has_one :user
  has_one :card
end
