require 'test_helper'

class Botstrap4herosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @botstrap4hero = botstrap4heros(:one)
  end

  test "should get index" do
    get botstrap4heros_url
    assert_response :success
  end

  test "should get new" do
    get new_botstrap4hero_url
    assert_response :success
  end

  test "should create botstrap4hero" do
    assert_difference('Botstrap4hero.count') do
      post botstrap4heros_url, params: { botstrap4hero: { context: @botstrap4hero.context, title: @botstrap4hero.title } }
    end

    assert_redirected_to botstrap4hero_url(Botstrap4hero.last)
  end

  test "should show botstrap4hero" do
    get botstrap4hero_url(@botstrap4hero)
    assert_response :success
  end

  test "should get edit" do
    get edit_botstrap4hero_url(@botstrap4hero)
    assert_response :success
  end

  test "should update botstrap4hero" do
    patch botstrap4hero_url(@botstrap4hero), params: { botstrap4hero: { context: @botstrap4hero.context, title: @botstrap4hero.title } }
    assert_redirected_to botstrap4hero_url(@botstrap4hero)
  end

  test "should destroy botstrap4hero" do
    assert_difference('Botstrap4hero.count', -1) do
      delete botstrap4hero_url(@botstrap4hero)
    end

    assert_redirected_to botstrap4heros_url
  end
end
