class Driver < ApplicationRecord
    belongs_to :team

    validates :name, presence: true
    validates :description, presence: true
    validates :skill, presence: true

    scope :sort_by_teams, -> {order(team_id: :desc)}
end
