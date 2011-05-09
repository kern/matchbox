require 'bundler'
Bundler::GemHelper.install_tasks

task :default => 'test:unit'

require 'rake/testtask'
Rake::TestTask.new('test:unit') do |t|
  t.ruby_opts += ['-rubygems']
  t.libs << 'test'
  t.pattern = 'test/test_*.rb'
end