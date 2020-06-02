class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :notes
  has_many :notes, include_nested_attributes: :true

  # def initialize(user_obj)
  #   @user = user_obj
  # end

  # def to_serialized_json
  #   @user.to_json(:include => {
  #     :notes => {include: [tags: {only: [:id, :content]}], :except => [:user_id, :updated_at]}
  #   },
  #   :except => [:created_at, :updated_at])
  # end
end
