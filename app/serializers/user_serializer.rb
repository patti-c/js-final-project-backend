class UserSerializer < ActiveModel::Serializer
  has_many :trips
  attributes :id, :email
end
