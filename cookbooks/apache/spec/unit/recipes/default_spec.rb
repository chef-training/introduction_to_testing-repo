#
# Cookbook Name:: apache
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'apache::default' do

  context 'When all attributes are default, on an unspecified platform' do

    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end

    it "updates the package repository" do
      expect(chef_run).to run_execute('apt-get update')
    end

    it 'installs the apache package' do
      expect(chef_run).to install_package('apache2')
    end

    it 'creates a default index html file' do
      expect(chef_run).to create_template('/var/www/index.html')
    end

    it 'starts and enables the apache2 service' do
      expect(chef_run).to start_service('apache2')
      expect(chef_run).to enable_service('apache2')
    end

  end
end
