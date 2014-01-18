class Course
  include Mongoid::Document

  field :code,    type: String
  field :title,   type: String
  field :credits, type: Float

  belongs_to :subject

  has_many :sections
end
