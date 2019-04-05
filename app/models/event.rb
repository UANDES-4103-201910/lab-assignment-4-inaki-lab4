class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :ticket_types
  validate :start_date
end
