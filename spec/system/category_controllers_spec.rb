# # spec/controllers/category_controllers_spec.rb
# require 'rails_helper'

# RSpec.describe 'Categories', type: :system do
#   include Devise::Test::IntegrationHelpers

#   before(:each) do
#     @user = User.create(
#       name: 'Naledi',
#       email: 'naledi@test.com',
#       password: 'password',
#       password_confirmation: 'password',
#       confirmed_at: Time.now,
#       confirmation_sent_at: Time.now
#     )
#     @category = Category.create(
#       user: @user,
#       name: 'Naledi',
#       icon: 'icon'
#     )
#     sign_in @user
#   end

#   describe 'Category Index' do
#     before(:each) do
#       visit categories_path
#     end

#     it 'should display the category name' do
#       expect(page).to have_content(@category.name)
#     end

#     it 'should display the category icon' do
#       expect(page).to have_css("img[src*='icon']")
#     end

#     it 'should display the total amount for each category' do
#       expect(page).to have_content(@category.total_amount)
#     end

#     it 'should navigate to transactions page when clicking on a category' do
#       click_link @category.name
#       expect(current_path).to eq(category_operations_path(@category))
#     end

#     it 'should navigate to the new category page when clicking on "NEW CATEGORY"' do
#       click_link 'NEW CATEGORY'
#       expect(current_path).to eq(new_category_path)
#     end
#   end

#   describe 'Category Show' do
#     before(:each) do
#       visit category_path(@category)
#     end

#     it 'should display the category name' do
#       expect(page).to have_content(@category.name)
#     end

#     it 'should display the category icon' do
#       expect(page).to have_css("img[src*='icon']")
#     end

#     it 'should display the category author name' do
#       expect(page).to have_content(@category.author.name)
#     end

#     it 'should navigate to the "Add transaction" page when clicking on "Add transaction"' do
#       click_link 'Add transaction'
#       expect(current_path).to eq(new_category_item_path(@category))
#     end
#   end
# end
