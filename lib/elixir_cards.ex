# to test this on the command line we run:
# iex -S mix

defmodule Cards do
  # these methods get automatically returned, can also write like:
  # def create_deck do
  #   return ["Ace", "Two", "Three"]
  # end
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Hearts", "Clubs", "Spades", "Diamonds"]

    # this is a list comprehension
    # a comprehension is essentially a map
    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end
    
  @moduledoc """
  Documentation for ElixirCards.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirCards.hello
      :world

  """
  def hello do
    :world
  end
end
