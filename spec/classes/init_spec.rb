require 'spec_helper'
describe 'viewvc' do

  context 'with class default on osfamily RedHat and lsbmajdistrelease 6' do
    let (:facts) {
      {
        :osfamily => 'RedHat',
        :lsbmajdistrelease => '6',
      }
    }
    it { should include_class('viewvc') }
    it { should include_class('apache') }
    it {
      should contain_package('viewvc_package').with({
        'ensure' => 'installed',
        'name'   => 'viewvc',
      })
    }
    it {
      should contain_file('viewvc_conf').with({
        'ensure' => 'file',
        'path'   => '/etc/viewvc/viewvc.conf',
        'mode'   => '0644',
        'owner'  => 'root',
        'group'  => 'root',
      }).with_content(/docroot = \/viewvc-static/)
    }
  end

  context 'with specifying package on osfamily redhat and lsbmajdistrelease 6' do
    let (:facts) {
      {
        :osfamily => 'redhat',
        :lsbmajdistrelease => '6',
      }
    }
    let (:params) { { :package => 'viewvc-ng' } }
    it {
      should contain_package('viewvc_package').with({
        'ensure' => 'installed',
        'name'   => 'viewvc-ng',
      })
    }
  end

  context 'with specifying config_path and config_group on osfamily redhat and lsbmajdistrelease 6' do
    let (:facts) {
      {
        :osfamily => 'redhat',
        :lsbmajdistrelease => '6',
      }
    }
    let (:params) {
      {
        :config_path  => '/etc/viewvc.conf',
        :config_group => 'apache',
      }
    }
    it {
      should contain_file('viewvc_conf').with({
        'ensure' => 'file',
        'path'   => '/etc/viewvc.conf',
        'mode'   => '0644',
        'owner'  => 'root',
        'group'  => 'apache',
      })
    }
  end

  context 'with specifying root_parents on osfamily redhat and lsbmajdistrelease 6' do
    let (:facts) {
      {
        :osfamily => 'redhat',
        :lsbmajdistrelease => '6',
      }
    }
    let (:params) {
      {
        :root_parents => '/var/rancid/CVS :cvs',
      }
    }
    it {
      should contain_file('viewvc_conf').with({
        'ensure' => 'file',
        'path'   => '/etc/viewvc/viewvc.conf',
        'mode'   => '0644',
        'owner'  => 'root',
        'group'  => 'root',
      }).with_content(/root_parents = \/var\/rancid\/CVS :cvs/)
    }
  end
end
