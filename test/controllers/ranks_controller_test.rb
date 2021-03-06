require 'test_helper'

class RanksControllerTest < ActionController::TestCase
  setup do
    @rank = ranks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ranks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rank" do
    assert_difference('Rank.count') do
      post :create, params: { rank: { name: @rank.name, score_from: @rank.score_from, score_to: @rank.score_to } }
    end

    assert_redirected_to rank_path(assigns(:rank))
  end

  test "should show rank" do
    get :show, params: { id: @rank }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @rank }
    assert_response :success
  end

  test "should update rank" do
    patch :update, params: { id: @rank, rank: { name: @rank.name, score_from: @rank.score_from, score_to: @rank.score_to } }
    assert_redirected_to rank_path(assigns(:rank))
  end

  test "should destroy rank" do
    assert_difference('Rank.count', -1) do
      delete :destroy, params: { id: @rank }
    end

    assert_redirected_to ranks_path
  end
end
