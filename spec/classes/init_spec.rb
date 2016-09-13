require 'spec_helper'
describe 'facts' do
  context 'with default values for all parameters' do
    it { should contain_class('facts') }
  end
end
