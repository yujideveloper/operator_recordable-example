class ApplicationController < ActionController::Base
  before_action { OperatorRecordable.operator = Operator.find(Operator.ids.sample) }
  before_action do
    Rails.logger.debug OperatorRecordable.config.store.class
    Rails.logger.debug Post.new.operator.id
  end
end
