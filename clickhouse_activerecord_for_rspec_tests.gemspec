# frozen_string_literal: true

require_relative "lib/clickhouse_activerecord_for_rspec_tests/version"

Gem::Specification.new do |spec|
  spec.name = "clickhouse_activerecord_for_rspec_tests"
  spec.version = ClickhouseActiverecordForRspecTests::VERSION
  spec.authors = ["TemaMix"]
  spec.email = ["temamix@github.com"]

  spec.summary = "ClickHouse ActiveRecord Test Extension"
  spec.description = "Extension for ActiveRecord adapter for ClickHouse: clickhouse-activerecord"
  spec.homepage = "https://github.com/tema_mix/clickhouse_activerecord_for_rspec_tests"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tema_mix/clickhouse_activerecord_for_rspec_tests"
  spec.metadata["changelog_uri"] = "https://github.com/tema_mix/clickhouse_activerecord_for_rspec_tests/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_runtime_dependency 'bundler', '>= 1.13.4'
  spec.add_runtime_dependency 'activerecord', '>= 5.2'
  spec.add_runtime_dependency 'clickhouse-activerecord', '>= 0.6.0'
end
