# Makes certain AR Model methods available to the ewpresenter.
#
# Useful when the model is an AR Model.
#
class Representers::ActiveRecord < Representers::Base
  model_reader :id, :to_param
  
  def dom_id
    ActionController::RecordIdentifier.dom_id(model)
  end
end