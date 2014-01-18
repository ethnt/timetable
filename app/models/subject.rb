class Subject
  include Mongoid::Document

  field :code, type: String
  field :name, type: String

  belongs_to :semester

  has_many :courses
end
