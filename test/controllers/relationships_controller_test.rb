require 'test_helper'

class RelationshipsControllerTest < ActionController::TestCase

<<<<<<< HEAD
  test "create should require logg-in user" do
=======
  test "create should require logged-in user" do
>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e
    assert_no_difference 'Relationship.count' do
      post :create
    end
    assert_redirected_to login_url
  end
  
<<<<<<< HEAD
  test "destroy should require logged-in user" do
=======
  
  test "destory shoulf require logged-in user" do
>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e
    assert_no_difference 'Relationship.count' do
      delete :destroy, id: relationships(:one)
    end
    assert_redirected_to login_url
  end
end
