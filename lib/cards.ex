defmodule Cards do
  @moduledoc """
  Module to handle the Cards
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello
      :world

  """
  def hello do
    :world
  end

  @doc """
  Create Deck
  Create a new Array of cards
  """
  def create_deck do
    values = [ "Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King" ]
    suits = [ "Spades", "Clubs", "Hearths", "Diamonds" ]
  end


  @doc """
  Shuffle Deck
  Shuffle deck cards

  ## Example
  ["Ace", "Two", "Three"] => ["Two", "Three", "Ace"]
  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
  Contains?
  Shuffle deck cards

  ## Example
  ["Ace", "Two", "Three"] contains? "King" => false
  ["Ace", "Two", "Three"] contains? "Two" => true
  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

end
