require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do 
    it 'ensure first name presence' do 
      user = User.new(last: 'last', email: 'email@gmail.com').save
      expect(user).to eq(false)
    end

    it 'ensure last name presence' do 
      user = User.new(first: 'first', email: 'email@gmail.com').save
      expect(user).to eq(false)
    end

    it 'ensure email presence' do 
      user = User.new(first: 'first', last: 'last').save
      expect(user).to eq(false)
    end

    it 'ensure save presence' do 
      user = User.new(first: 'first', last: 'last', email: 'email@gmail.com').save
      expect(user).to eq(true)
    end

  end
end
