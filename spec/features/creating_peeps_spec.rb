feature 'Creating peeps' do
  scenario 'I can create a new peep' do
    visit '/peeps/new'
    fill_in 'body', with: 'test peep'
    click_button 'Post Peep'

    expect(current_path).to eq '/peeps'


        expect(page).to have_content('test peep')
    end
end