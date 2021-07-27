require "test_helper"

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { Address: @customer.Address, AddressLine1: @customer.AddressLine1, Addressline2: @customer.Addressline2, BillingAddress: @customer.BillingAddress, City: @customer.City, Country: @customer.Country, DateOfOrder: @customer.DateOfOrder, Discount: @customer.Discount, Email: @customer.Email, MRP: @customer.MRP, Name: @customer.Name, NetPrice: @customer.NetPrice, OrderNumber: @customer.OrderNumber, OrderStatus: @customer.OrderStatus, Phone: @customer.Phone, Phoneno: @customer.Phoneno, Pin: @customer.Pin, Quantity: @customer.Quantity, SKU: @customer.SKU, ShippingAddress: @customer.ShippingAddress, State: @customer.State, Username: @customer.Username } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { Address: @customer.Address, AddressLine1: @customer.AddressLine1, Addressline2: @customer.Addressline2, BillingAddress: @customer.BillingAddress, City: @customer.City, Country: @customer.Country, DateOfOrder: @customer.DateOfOrder, Discount: @customer.Discount, Email: @customer.Email, MRP: @customer.MRP, Name: @customer.Name, NetPrice: @customer.NetPrice, OrderNumber: @customer.OrderNumber, OrderStatus: @customer.OrderStatus, Phone: @customer.Phone, Phoneno: @customer.Phoneno, Pin: @customer.Pin, Quantity: @customer.Quantity, SKU: @customer.SKU, ShippingAddress: @customer.ShippingAddress, State: @customer.State, Username: @customer.Username } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
