require "debug"

DEBUGGER__::CONFIG[:fork_mode] = :parent

fork do
  puts 'parent forked.'
  fork do
    puts 'child forked.'
  end
end
