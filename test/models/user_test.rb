require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end


  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end
  

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
  
>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e
>>>>>>> 148c8d617f3eacbd8be20c89085e047a789f2aed
  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
 
  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
  
  test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?(:remember, '')
  end
  
  test "associated microposts should be destroyed" do
    @user.save
    @user.microposts.create!(content: "Lorem ipsum")
    assert_difference 'Micropost.count', -1 do
      @user.destroy
    end
  end
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 148c8d617f3eacbd8be20c89085e047a789f2aed
  
 test "should follow and unfollow a user" do
    michael  = users(:michael)
    archer   = users(:archer)
<<<<<<< HEAD
=======
=======
    
  test "should follow and unfollow a user" do
    michael = users(:michael)
    archer  = users(:archer)
>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e
>>>>>>> 148c8d617f3eacbd8be20c89085e047a789f2aed
    assert_not michael.following?(archer)
    michael.follow(archer)
    assert michael.following?(archer)
    assert archer.followers.include?(michael)
    michael.unfollow(archer)
    assert_not michael.following?(archer)
  end
<<<<<<< HEAD
=======
  
<<<<<<< HEAD
=======
>>>>>>> 148c8d617f3eacbd8be20c89085e047a789f2aed
  
>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e
  test "feed should have the right posts" do
    michael = users(:michael)
    archer  = users(:archer)
    lana    = users(:lana)
<<<<<<< HEAD
=======
    
>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e
    # フォローしているユーザーの投稿を確認
    lana.microposts.each do |post_following|
      assert michael.feed.include?(post_following)
    end
<<<<<<< HEAD
=======
    
>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e
    # 自分自身の投稿を確認
    michael.microposts.each do |post_self|
      assert michael.feed.include?(post_self)
    end
<<<<<<< HEAD
=======
    
>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e
    # フォローしていないユーザーの投稿を確認
    archer.microposts.each do |post_unfollowed|
      assert_not michael.feed.include?(post_unfollowed)
    end
  end
end
