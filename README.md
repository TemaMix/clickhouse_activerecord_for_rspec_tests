# ClickhouseActiverecordForRspecTests

This Ruby on Rails gem extends the functionality of the clickhouse-activerecord gem, providing additional features and integrations for working with ClickHouse databases in a Rails application in test mode with rspec

This gem should prevent errors related to `use_transactional_fixtures` like following: `NotImplementedError`. 
This error happens because Clickhouse DB does not support transactions and the clickhouse-activerecord gem does not support transaction operation too.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test do
  gem 'clickhouse_activerecord_for_rspec_tests'
end
```
This gem just extends the clickhouse_activerecord gem so it does not required additional actions.
