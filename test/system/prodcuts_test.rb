require "application_system_test_case"

class ProdcutsTest < ApplicationSystemTestCase
  setup do
    @prodcut = prodcuts(:one)
  end

  test "visiting the index" do
    visit prodcuts_url
    assert_selector "h1", text: "Prodcuts"
  end

  test "creating a Prodcut" do
    visit prodcuts_url
    click_on "New Prodcut"

    fill_in "Brand", with: @prodcut.brand
    fill_in "Category", with: @prodcut.category_id
    fill_in "Description", with: @prodcut.description
    fill_in "Name", with: @prodcut.name
    fill_in "Price", with: @prodcut.price
    fill_in "Quantity", with: @prodcut.quantity
    fill_in "Rating", with: @prodcut.rating
    click_on "Create Prodcut"

    assert_text "Prodcut was successfully created"
    click_on "Back"
  end

  test "updating a Prodcut" do
    visit prodcuts_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @prodcut.brand
    fill_in "Category", with: @prodcut.category_id
    fill_in "Description", with: @prodcut.description
    fill_in "Name", with: @prodcut.name
    fill_in "Price", with: @prodcut.price
    fill_in "Quantity", with: @prodcut.quantity
    fill_in "Rating", with: @prodcut.rating
    click_on "Update Prodcut"

    assert_text "Prodcut was successfully updated"
    click_on "Back"
  end

  test "destroying a Prodcut" do
    visit prodcuts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prodcut was successfully destroyed"
  end
end
