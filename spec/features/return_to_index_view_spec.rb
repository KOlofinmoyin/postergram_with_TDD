require 'rails_helper.rb'


feature 'Returning to ALL posts' do
  scenario 'can click the Back button on the create post show view' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/images/coffee.jpg")
    fill_in "Caption", with: 'nom nom nom #coffeetime2'
    click_button 'Create Post'
    save_and_open_page
    expect(page).to have_content('Cancel')
  end
end
