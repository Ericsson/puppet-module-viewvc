require 'spec_helper'
describe 'viewvc' do

  context 'with default options' do
    it {
      should include_class('viewvc')
    }
  end
end
