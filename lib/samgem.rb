# frozen_string_literal: true

require_relative "samgem/version"

module Samgem
  class Error < StandardError; end
  class Coin
    def self.flip
      coin_sides = ["heads", "tails"]
      p coin_sides.sample
    end
  end

  class PlayingCard
    def self.draw
      suits = ["Spades", "Diamonds", "Hearts", "Clubs"]
      cards = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Jack", "Queen", "King"]

      p "#{cards.sample} of #{suits.sample}"
    end
  end

  class Dice
    def self.roll(die)
      rolls = []
      die.times do
        rolls << rand(1..6)
      end
      p rolls
    end
  end

  class Lotto
    def self.pick(nums, limit)
      picks = []
      nums.times do
        picks << rand(0..limit)
      end
      p picks
    end
  end
end
