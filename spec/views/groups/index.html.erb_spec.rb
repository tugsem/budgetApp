require 'rails_helper'

RSpec.describe 'groups/index', type: :view do
  before(:each) do
    @user = User.create(name: 'name', email: 'tim@gmail.com', password: '123456')
    sign_in @user
    @user.groups = []
    assign(:groups, [
             @user.groups.create(
               name: 'Name',
               icon: 'Icon',
               user: @user
             ),
             @user.groups.create(
               name: 'Name',
               icon: 'Icon',
               user: @user
             )
           ])
  end

  it 'renders a list of groups' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div.card' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
  end
end
