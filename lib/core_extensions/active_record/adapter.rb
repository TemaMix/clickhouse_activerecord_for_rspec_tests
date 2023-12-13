module CoreExtensions
  module ActiveRecord
    module Adapter

      # this is a fake method for clickhouse database to use it with rails,
      # rspec and use_transactional_fixtures
      def transaction
        yield(self)
      end
    end
  end
end