class TripSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :origin, :destination, :origin_code, :destination_code, :name
end
