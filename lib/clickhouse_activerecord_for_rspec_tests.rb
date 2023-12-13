# frozen_string_literal: true

require_relative "clickhouse_activerecord_for_rspec_tests/version"
require_relative "core_extensions/active_record/adapter"

if defined?(Rails::Railtie)
  require 'clickhouse_activerecord_for_rspec_tests/railtie'
end

module ClickhouseActiverecordForRspecTests
  def self.load
    ActiveRecord::ConnectionAdapters::ClickhouseAdapter.include CoreExtensions::ActiveRecord::Adapter
  end
end
