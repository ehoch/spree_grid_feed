Spree::ProductsController.class_eval do
  respond_to :xml, :only => [:index]
end