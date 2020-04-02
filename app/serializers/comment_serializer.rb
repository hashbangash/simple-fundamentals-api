# frozen_string_literal: true

class CommentSerializer < ActiveModel::Serializer
  attributes :id, :commentText, :author, :created_at, :updated_at, :editable
  has_one :user
  has_one :card

  def editable
    scope == object.user
  end
end
