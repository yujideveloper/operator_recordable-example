class ApplicationController < ActionController::Base
  before_action { OperatorRecordable.operator = Operator.find(Operator.ids.sample) }
end
