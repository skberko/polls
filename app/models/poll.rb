# == Schema Information
#
# Table name: polls
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  user_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Poll < ActiveRecord::Base
  validates :title, :user_id, presence: true

  belongs_to :author,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id # refers to user.id
end
