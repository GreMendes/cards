defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "hello" do
    assert Cards.hello == :world
  end

  test "create new deck" do
    assert Cards.create_deck != []
  end

end
