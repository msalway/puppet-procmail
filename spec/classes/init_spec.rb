require 'spec_helper'
describe 'procmail' do
  context 'with default values for all parameters' do
    it { is_expected.to contain_class('procmail') }
    it { is_expected.to contain_class('procmail::config') }
  end
end
