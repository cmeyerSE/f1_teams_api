class Team < ApplicationRecord
    has_many :drivers

    scope :latest_team, -> {order(created_at: :desc)}
end
