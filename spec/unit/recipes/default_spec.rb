#
# Cookbook Name:: cowsay
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'cowsay::default' do

  # ChefSpec examples can be found at
  # https://github.com/sethvargo/chefspec/tree/master/examples

  context 'When all attributes are default, on an unspecified platform' do

    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end

    it 'adds the package cowsay to the resource collection' do
      expect(chef_run).to install_package("cowsay")
    end

  end
end
