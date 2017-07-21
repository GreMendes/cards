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

#########   We can do it better!   #########
#    cards = for value <- values do
#              for suit <- suits do
#                "#{value} of #{suit}"
#              end
#            end
#    List.flatten(cards)
############################################

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end

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

  @doc """
  deal
  Deal cards

  ## Example
  ["Ace", "Two", "Three"] deal 1 => {["Ace"], ["Two", "Three"]}
  """

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end


  def save(deck, filename) do
    bynary = :erlang.term_to_binary(deck)
    File.write(filename, bynary)
  end

  def load(filename) do
#    Not so good
#    { status, binary } = File.read(filename)
#
#    case status do
#      :ok -> :erlang.binary_to_term binary
#      :error -> "That file does not exist"
#    end

    case File.read(filename) do
       { :ok, binary } -> :erlang.binary_to_term binary
       { :error, _reason } -> "That file does not exist"
    end

  end

end
