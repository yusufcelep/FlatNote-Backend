class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :tags, :user_id
  has_many :tags, through: :note_tags
end
