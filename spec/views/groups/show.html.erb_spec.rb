require 'rails_helper'

RSpec.describe 'groups/show', type: :view do
  before(:each) do
    @user = User.create(name: 'name', email: 'tim@gmail.com', password: '123456')
    sign_in @user
    @user.groups = []
    @entities = []
    assign(:group, @user.groups.create!(
                     name: 'Name',
                     icon: 'Icon'
                   ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
  end
end
