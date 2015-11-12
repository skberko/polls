# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true

  has_many :polls,
    class_name: "Poll",
    foreign_key: :user_id,
    primary_key: :id # refers to users.id
end
