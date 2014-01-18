class Semester
  include Mongoid::Document

  field :season, type: String
  field :year,   type: Integer

  has_many :subjects
end
