module PartyGoer
  attr_writer :drink_counter
  def initialize
    @drink_counter = 0
  end

  def drink
    @drink_counter += 1
    unless @drink_counter == 3
      true
    else
      false
    end
  end

  def sing
    ""
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def invited?
      return true
    end
  end
end

class PersonalizedHavocError < StandardError
end
