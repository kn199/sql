require 'mysql'
require 'dotenv'
require './question.rb'
Dotenv.load

db = Mysql.connect(ENV['HOST'], ENV['USER'], ENV['PASSWORD'], ENV['DB_NAME'])

get_problems.shuffle.each do |qa|
  puts qa['q']
  if gets.chomp == qa['a']
    puts '正解'
  else
    puts '不正解'
    puts qa['a']
  end
end
