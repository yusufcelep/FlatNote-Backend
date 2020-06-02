class TagSerializer < ActiveModel::Serializer
  attributes :content
  has_many :notes, through: :note_tags
end
