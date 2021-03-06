# == Schema Information
#
# Table name: immediate_leaves
#
#  id          :integer          not null, primary key
#  date        :date
#  user_id     :integer
#  creator_id  :integer
#  status      :integer          default("approved"), not null
#  item_count  :integer
#  comment     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  record_type :string           default("immediate_leave"), not null
#

FactoryGirl.define do
  factory :immediate_leave, class: 'ImmediateLeave' do
    
  end
end
