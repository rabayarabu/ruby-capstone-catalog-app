require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(author, publisher, cover_state, publish_date, label)
    @author = author
    @publisher = publisher
    @cover_state = cover_state
    @public_date = publish_date
    @labels = label
  end

  def can_be_archived?
    if @cover_state || super == 'bad'
      false
    else
      true
    end
  end
end
