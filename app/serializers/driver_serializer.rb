class DriverSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :skill, :team_id
end
