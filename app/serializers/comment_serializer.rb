# frozen_string_literal: true

class CommentSerializer < ActiveModel::Serializer
  attributes :id, :commentText, :author, :created_at, :updated_at
  has_one :user
  has_one :card
end
