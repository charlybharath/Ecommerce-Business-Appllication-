
ActiveRecord::Schema.define(version: 2021_07_27_163919) do

  create_table "customers", force: :cascade do |t|
    t.string "Name"
    t.integer "Phone"
    t.string "Email"
    t.string "Address"
    t.string "OrderNumber"
    t.date "DateOfOrder"
    t.string "OrderStatus"
    t.string "BillingAddress"
    t.string "ShippingAddress"
    t.string "SKU"
    t.string "MRP"
    t.integer "Quantity"
    t.string "Discount"
    t.string "NetPrice"
    t.string "Username"
    t.integer "Phoneno"
    t.string "AddressLine1"
    t.string "Addressline2"
    t.string "City"
    t.string "State"
    t.string "Country"
    t.integer "Pin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
