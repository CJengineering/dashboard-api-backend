require "test_helper"

class InstagramMediaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instagram_medium = instagram_media(:one)
  end

  test "should get index" do
    get instagram_media_url, as: :json
    assert_response :success
  end

  test "should create instagram_medium" do
    assert_difference("InstagramMedium.count") do
      post instagram_media_url, params: { instagram_medium: { comments_count: @instagram_medium.comments_count, id_media: @instagram_medium.id_media, like_count: @instagram_medium.like_count, media_type: @instagram_medium.media_type, media_url: @instagram_medium.media_url, timestamp: @instagram_medium.timestamp } }, as: :json
    end

    assert_response :created
  end

  test "should show instagram_medium" do
    get instagram_medium_url(@instagram_medium), as: :json
    assert_response :success
  end

  test "should update instagram_medium" do
    patch instagram_medium_url(@instagram_medium), params: { instagram_medium: { comments_count: @instagram_medium.comments_count, id_media: @instagram_medium.id_media, like_count: @instagram_medium.like_count, media_type: @instagram_medium.media_type, media_url: @instagram_medium.media_url, timestamp: @instagram_medium.timestamp } }, as: :json
    assert_response :success
  end

  test "should destroy instagram_medium" do
    assert_difference("InstagramMedium.count", -1) do
      delete instagram_medium_url(@instagram_medium), as: :json
    end

    assert_response :no_content
  end
end
