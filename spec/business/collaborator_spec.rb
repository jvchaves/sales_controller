require 'rails_helper'

describe 'Email Validate' do
  it 'accept valid email' do
    collaborator = Collaborator.create(email: 'email@example.com')

    expect(collaborator.email).to match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
  end

  it 'Not accept invalid Email' do
    collaborator = Collaborator.create(email: 'email@example')

    expect(collaborator.email).not_to match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
  end
end
