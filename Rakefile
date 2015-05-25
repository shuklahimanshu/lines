require './lib/line.rb'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

desc 'Print hello world'
task :print do
  puts 'hello world'
end

desc 'Print hello world again !'
task :print_again do
  puts 'hello world again, sigh !'
end

desc 'Calculate length of line correctly'
task :length, [:point1, :point2, :point3, :point4] do |t, args|
  starting_point = [Integer(args.point1), Integer(args.point2)]
  end_point = [Integer(args.point3), Integer(args.point4)]
  line = Line.new(starting_point, end_point)
  puts line.length
end
