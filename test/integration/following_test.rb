require 'test_helper'

class FollowingTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
    @other = users(:archer)
    log_in_as(@user)
  end

  test "following page" do
    get following_user_path(@user)
    assert_not @user.following.empty?
    assert_match @user.following.count.to_s, response.body
    @user.following.each do |user|
      assert_select "a[href=?]", user_path(user)
    end
  end

  test "followers page" do
    get followers_user_path(@user)
    assert_not @user.followers.empty?
    assert_match @user.followers.count.to_s, response.body
    @user.followers.each do |user|
      assert_select "a[href=?]", user_path(user)
    end
  end
<<<<<<< HEAD
 
=======
<<<<<<< HEAD
 
=======
<<<<<<< HEAD
 
=======
  
  
>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e
>>>>>>> 148c8d617f3eacbd8be20c89085e047a789f2aed
>>>>>>> e6fdcabef359d177e94501ea741c7c28e5452f97
  test "should follow a user the standard way" do
    assert_difference '@user.following.count', 1 do
      post relationships_path, followed_id: @other.id
    end
  end
<<<<<<< HEAD

  test "should follow a user with Ajax" do
    assert_difference '@user.following.count', 1 do
      xhr :post, relationships_path, followed_id: @other.id
    end
  end

  test "should unfollow a user the standard way" do
=======
  
  
  test "should follow a user with Ajax" do
>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e
    @user.follow(@other)
    relationship = @user.active_relationships.find_by(followed_id: @other.id)
    assert_difference '@user.following.count', -1 do
      delete relationship_path(relationship)
    end
  end
<<<<<<< HEAD

=======
  
  
>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e
  test "should unfollow a user with Ajax" do
    @user.follow(@other)
    relationship = @user.active_relationships.find_by(followed_id: @other.id)
    assert_difference '@user.following.count', -1 do
      xhr :delete, relationship_path(relationship)
    end
  end
end
<<<<<<< HEAD
=======

>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e
