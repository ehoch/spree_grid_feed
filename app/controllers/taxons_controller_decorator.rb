Spree::TaxonsController.class_eval do
  respond_to :xml, :only => [:show]
end