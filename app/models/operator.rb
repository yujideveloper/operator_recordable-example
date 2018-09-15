class Operator < ApplicationRecord
  acts_as_paranoid
  record_operator_on :create, :update, :destroy

  validates :name, presence: true
end
