class Post < ApplicationRecord
  acts_as_paranoid
  record_operator_on :create, :update, :destroy
end
