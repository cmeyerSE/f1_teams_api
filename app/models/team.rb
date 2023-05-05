class Team < ApplicationRecord
    has_many :drivers

    validates :name, presence: true

    scope :latest_team, -> {order(created_at: :desc)}
end
