class Meeting
  include Mongoid::Document

  field :time,     type: Range
  field :location, type: String

  belongs_to :section
end
