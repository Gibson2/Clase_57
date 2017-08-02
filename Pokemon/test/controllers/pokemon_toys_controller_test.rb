require 'test_helper'

class PokemonToysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokemon_toy = pokemon_toys(:one)
  end

  test "should get index" do
    get pokemon_toys_url
    assert_response :success
  end

  test "should get new" do
    get new_pokemon_toy_url
    assert_response :success
  end

  test "should create pokemon_toy" do
    assert_difference('PokemonToy.count') do
      post pokemon_toys_url, params: { pokemon_toy: { content: @pokemon_toy.content, name: @pokemon_toy.name } }
    end

    assert_redirected_to pokemon_toy_url(PokemonToy.last)
  end

  test "should show pokemon_toy" do
    get pokemon_toy_url(@pokemon_toy)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokemon_toy_url(@pokemon_toy)
    assert_response :success
  end

  test "should update pokemon_toy" do
    patch pokemon_toy_url(@pokemon_toy), params: { pokemon_toy: { content: @pokemon_toy.content, name: @pokemon_toy.name } }
    assert_redirected_to pokemon_toy_url(@pokemon_toy)
  end

  test "should destroy pokemon_toy" do
    assert_difference('PokemonToy.count', -1) do
      delete pokemon_toy_url(@pokemon_toy)
    end

    assert_redirected_to pokemon_toys_url
  end
end
