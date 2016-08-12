class Listing < ApplicationRecord

  belongs_to :user

  enum sharing_type: [:privateroom, :shared_room, :entire_house]
end
