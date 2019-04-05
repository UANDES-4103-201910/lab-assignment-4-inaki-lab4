class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :ticket_types
  validates :event_venue_id, uniqueness: {scope:start_date,
                                            message: "There cannot be two or more events hosted in the same venue with the same start date"}
  validate :start_date_not

  def start_date_not
    if start_date < Date.today
      errors.add(:start_date, "Must be later than current date of creation")
end
