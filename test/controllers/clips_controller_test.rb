require 'test_helper'

class ClipsControllerTest < ActionController::TestCase
  setup do
    @clip = clips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clip" do
    assert_difference('Clip.count') do
      post :create, clip: { board_id: @clip.board_id, end: @clip.end, position: @clip.position, start: @clip.start, title: @clip.title, url: @clip.url }
    end

    assert_redirected_to clip_path(assigns(:clip))
  end

  test "should show clip" do
    get :show, id: @clip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clip
    assert_response :success
  end

  test "should update clip" do
    patch :update, id: @clip, clip: { board_id: @clip.board_id, end: @clip.end, position: @clip.position, start: @clip.start, title: @clip.title, url: @clip.url }
    assert_redirected_to clip_path(assigns(:clip))
  end

  test "should destroy clip" do
    assert_difference('Clip.count', -1) do
      delete :destroy, id: @clip
    end

    assert_redirected_to clips_path
  end
end
