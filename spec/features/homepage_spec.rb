
feature 'Chitter Homepage' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Chitter Home"
  end
end