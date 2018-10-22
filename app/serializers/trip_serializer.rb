class TripSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :origin, :destination
end
