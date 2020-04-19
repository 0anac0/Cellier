require 'test_helper'

class ProfessorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professor = professors(:one)
  end

  test "should get index" do
    get professors_url, as: :json
    assert_response :success
  end

  test "should create professor" do
    assert_difference('Professor.count') do
      post professors_url, params: { professor: { name: @professor.name, user_id: @professor.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show professor" do
    get professor_url(@professor), as: :json
    assert_response :success
  end

  test "should update professor" do
    patch professor_url(@professor), params: { professor: { name: @professor.name, user_id: @professor.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy professor" do
    assert_difference('Professor.count', -1) do
      delete professor_url(@professor), as: :json
    end

    assert_response 204
  end
end
