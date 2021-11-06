feature 'Enter names' do
    scenario 'submitting names' do
        visit('/')
        fill_in :player_name, with: 'ben'
        click_button "Let's play!!"
        expect(page).to have_content 'Welcome ben!'
    end
  end