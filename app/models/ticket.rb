class Ticket < ApplicationRecord
  belongs_to :ticket_type
  belongs_to :order
  before_save :after_start_date
  before_save :bought_after_start

  private
    def after_start_date
      if create_at > start_date 

    end
    
    def bought_after_start
      
    end  
end
