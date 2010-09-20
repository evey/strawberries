require 'test_helper'

class StrawberriesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Strawberry.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Strawberry.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Strawberry.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to strawberry_url(assigns(:strawberry))
  end
  
  def test_edit
    get :edit, :id => Strawberry.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Strawberry.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Strawberry.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Strawberry.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Strawberry.first
    assert_redirected_to strawberry_url(assigns(:strawberry))
  end
  
  def test_destroy
    strawberry = Strawberry.first
    delete :destroy, :id => strawberry
    assert_redirected_to strawberries_url
    assert !Strawberry.exists?(strawberry.id)
  end
end
