feature 'viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content('Bookmark Manager')
  end

  scenario 'view the bookmarks' do
    visit('/')
    click_button('View Bookmarks')
    expect(page).to have_content('Your bookmarks')

    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end