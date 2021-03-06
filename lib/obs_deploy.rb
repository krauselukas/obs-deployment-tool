# frozen_string_literal: true

require 'open-uri'
require 'net/http'
require 'logger'

require 'nokogiri'
require_relative 'obs_deploy/version'
require_relative 'obs_deploy/check_diff'
require_relative 'obs_deploy/zypper'
require_relative 'obs_deploy/systemctl'
require_relative 'obs_deploy/apache_sysconfig'
require 'tempfile'

module ObsDeploy
  class Error < StandardError; end
end
