# class Card
#   attr_reader :value :suit
#   def initialize(value, suit)
#     @value = value
#     @suit = suit
#
#   case @value
#   when 1
#     @value = "Ace"
#
#   when 11
#     @value = "Jack"
#
#   when 12
#     @value = "Queen"
#
#   when 13
#     @value = "King"
#     end
#   end
# end



class Card
  attr_reader :value, :suit

  def initialize value, suit
    @value = value
    @suit = suit.capitalize!
  end

  def to_s
    "#{face} of #{@suit}"
  end

  def face
    case @value
    when 1
      "Ace"
    when 11
      "Jack"
    when 12
      "Queen"
    when 13
      "King"
    else
      @value
    end
  end

end


card = Card.new("King", "Hearts")
puts card
