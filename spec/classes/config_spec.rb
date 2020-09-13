require 'spec_helper'
describe 'procmail::config' do
  context 'with default values for all parameters' do
    it { is_expected.to contain_class('procmail::config') }
    it { is_expected.to contain_file('/etc/procmailrc') }

  end
end
