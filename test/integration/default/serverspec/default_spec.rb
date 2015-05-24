#
# Cookbook Name:: cowsay
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'cowsay::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  describe command('cowsay MOO') do
                                # -----
    its(:stdout) { should match /< MOO >/ }
                                # ----- 
                                #       \   ^__^
                                #        \  (oo)\_______
                                #           (__)\       )\/\
                                #                ||----w |
                                #                ||     ||
  end

end