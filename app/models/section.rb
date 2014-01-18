class Section
  include Mongoid::Document

  field :crn, type: Integer
  field :number, type: Integer
  field :instructor, type: String

  belongs_to :course

  has_many :meetings
end
