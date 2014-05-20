require 'test_helper'

class OffendersControllerTest < ActionController::TestCase
  setup do
    @offender = offenders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offenders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offender" do
    assert_difference('Offender.count') do
      post :create, offender: { address: @offender.address, age: @offender.age, crimes: @offender.crimes, educational_background: @offender.educational_background, family_income: @offender.family_income, father_name: @offender.father_name, father_occupation: @offender.father_occupation, gender: @offender.gender, image: @offender.image, mobile_no: @offender.mobile_no, mother_name: @offender.mother_name, mother_occupation: @offender.mother_occupation, name: @offender.name, occupation: @offender.occupation, psychological_status: @offender.psychological_status, religion: @offender.religion }
    end

    assert_redirected_to offender_path(assigns(:offender))
  end

  test "should show offender" do
    get :show, id: @offender
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offender
    assert_response :success
  end

  test "should update offender" do
    patch :update, id: @offender, offender: { address: @offender.address, age: @offender.age, crimes: @offender.crimes, educational_background: @offender.educational_background, family_income: @offender.family_income, father_name: @offender.father_name, father_occupation: @offender.father_occupation, gender: @offender.gender, image: @offender.image, mobile_no: @offender.mobile_no, mother_name: @offender.mother_name, mother_occupation: @offender.mother_occupation, name: @offender.name, occupation: @offender.occupation, psychological_status: @offender.psychological_status, religion: @offender.religion }
    assert_redirected_to offender_path(assigns(:offender))
  end

  test "should destroy offender" do
    assert_difference('Offender.count', -1) do
      delete :destroy, id: @offender
    end

    assert_redirected_to offenders_path
  end
end
