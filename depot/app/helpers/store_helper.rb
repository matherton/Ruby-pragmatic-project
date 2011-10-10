module StoreHelper
  #attempt to convert $ to £ but did not work here - think changing app/locales/en.yml did
  #number_to_currency(1234567890.50) > #=> $1,234,567,890.50 number_to_currency(1234567890.506) > #=> $1,234,567,890.51
  #number_to_currency(1234567890.50, :unit => "£", :separator => ",", :delimiter => "") > #=> £1234567890,50
end
