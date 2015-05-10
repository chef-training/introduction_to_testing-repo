require 'spec_helper'

describe 'apache::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  
  describe port(80) do
    it { should be_listening }
  end

  # curl was not available, but wget was ...
  describe command("wget localhost && cat index.html") do
    its(:stdout) { should contain(/Hello, World!/) }
  end

end