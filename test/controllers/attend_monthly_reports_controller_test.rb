# coding: utf-8
require "test_helper"

class AttendMonthlyReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    User.all.each { |u| u.destroy }
    profile = create_profile
    @user = profile.user
    @location = create(:location, chinese_name: '银河')
    @department = create(:department, chinese_name: '行政及人力資源部')
    @position = create(:position, chinese_name: '網絡及系統副總監')
    @user.location_id = @location.id
    @user.department_id = @department.id
    @user.position_id = @position.id
    @user.save
    admin_role = create(:role)
    admin_role.add_permission_by_attribute(:view_for_report, :AttendMonthlyReport, :macau)
    @user.add_role(admin_role)
    AttendMonthlyReportsController.any_instance.stubs(:current_user).returns(@user)
  end

  test 'index' do
    AttendMonthlyReport.generate_reports(2017, 1)

    get "/attend_monthly_reports"
    assert_response :success

    byebug
  end
end
