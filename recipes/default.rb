#
# Cookbook Name:: rsc_ibm_http_server
# Recipe:: default
#
# Copyright (C) 2014 RightScale Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

node.default['ihs']['install']['repositoryLocation']='https://s3.amazonaws.com/ent-sw/ihs.zip'
node.default['im']['install_zip']['url']='http://s3.amazonaws.com/ent-sw/ihs.zip'

Chef::Log.info "Install IHS URL: #{node['ihs']['install']['repositoryLocation']}"
include_recipe "iim::default"
#include_recipe 'ihs::default'
