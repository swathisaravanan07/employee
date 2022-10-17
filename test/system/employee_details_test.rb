require "application_system_test_case"

class EmployeeDetailsTest < ApplicationSystemTestCase
  setup do
    @employee_detail = employee_details(:one)
  end

  test "visiting the index" do
    visit employee_details_url
    assert_selector "h1", text: "Employee details"
  end

  test "should create employee detail" do
    visit employee_details_url
    click_on "New employee detail"

    fill_in "Age", with: @employee_detail.age
    fill_in "Designation", with: @employee_detail.designation
    fill_in "Gender", with: @employee_detail.gender
    fill_in "Name", with: @employee_detail.name
    click_on "Create Employee detail"

    assert_text "Employee detail was successfully created"
    click_on "Back"
  end

  test "should update Employee detail" do
    visit employee_detail_url(@employee_detail)
    click_on "Edit this employee detail", match: :first

    fill_in "Age", with: @employee_detail.age
    fill_in "Designation", with: @employee_detail.designation
    fill_in "Gender", with: @employee_detail.gender
    fill_in "Name", with: @employee_detail.name
    click_on "Update Employee detail"

    assert_text "Employee detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee detail" do
    visit employee_detail_url(@employee_detail)
    click_on "Destroy this employee detail", match: :first

    assert_text "Employee detail was successfully destroyed"
  end
end
