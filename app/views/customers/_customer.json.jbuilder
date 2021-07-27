json.extract! customer, :id, :Name, :Phone, :Email, :Address, :OrderNumber, :DateOfOrder, :OrderStatus, :BillingAddress, :ShippingAddress, :SKU, :MRP, :Quantity, :Discount, :NetPrice, :Username, :Phoneno, :AddressLine1, :Addressline2, :City, :State, :Country, :Pin, :created_at, :updated_at
json.url customer_url(customer, format: :json)
