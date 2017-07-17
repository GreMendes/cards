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
    ["Ace", "Two", "Three"]
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
end
