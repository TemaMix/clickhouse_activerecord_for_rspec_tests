module ClickhouseActiverecordForRspecTests
  require 'rails'

  class Railtie < Rails::Railtie
    initializer "clickhouse.load" do
      ActiveSupport.on_load :active_record do
        ClickhouseActiverecordForRspecTests.load
      end
    end
  end
end