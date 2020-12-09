# frozen_string_literal: true

require 'rspec/core/rake_task'

namespace :dev do
  def ssh_keys_dir
    root_dir = File.dirname(__FILE__)
    File.join(root_dir, 'docker-files', 'ssh-keys')
  end

  desc 'Create ssh keys for development'
  task :create_keys do
    FileUtils.mkdir_p ssh_keys_dir
    system "/usr/bin/ssh-keygen -t rsa -f #{File.join(ssh_keys_dir, 'id_rsa')} -q -N \"\""
    FileUtils.cp File.join(ssh_keys_dir, 'id_rsa.pub'), File.join(ssh_keys_dir, 'authorized_keys')
  end
  desc 'build docker environment'
  task build: :create_keys do
    system('docker-compose build')
  end
  desc 'Destroy ssh keys for development'
  task :destroy_keys do
    ['ids_rsa.pub', 'id_rsa', 'authorized_keys'].each do |file|
      FileUtils.rm_rf File.join(ssh_keys_dir, file)
    end
  end
end

RSpec::Core::RakeTask.new(:spec)

task default: :spec
