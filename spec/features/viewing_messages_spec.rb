require 'pg'

feature 'Viewing messages' do
  scenario 'A user can see all messages' do
    connection = PG.connect(dbname: 'chitter_test')
    
    connection.exec("INSERT INTO peeps (message) VALUES ('Hi everyone');")
    connection.exec("INSERT INTO peeps (message) VALUES ('Hope you are enjoying Chitter as much as me');")
    
    visit('/messages')

    expect(page).to have_content "Hi everyone"
    expect(page).to have_content "Hope you are enjoying Chitter as much as me"
  end
end 