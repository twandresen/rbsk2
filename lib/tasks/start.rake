
# start rails using the RAILS_PORT
# environment variable to set the port.
# if it hasn't been defined, use the default...
task "start" => :environment do

  # options...
  port = ENV['RAILS_PORT'] || 3000

  # Kill any running server process
  dir = File.dirname(File.expand_path(__FILE__ ))
  pid_file = "#{dir}/../../tmp/pids/server.pid"

  if File.exist?(pid_file)
     pid = File.read(pid_file).to_i
     puts "Killing existing PID #{pid}"
     Process.kill(9, pid)
     File.delete(pid_file)
  end

  # start the new rails process...
  pid = Process.spawn("rails", "server", "-p", port, "-b", "0.0.0.0")

  # clear the default rake signal trap.
  # all we want is for the child to receive
  # the signal, it'll take care of the reset...
  trap('INT') { }

  # wait for the pid!
  Process.wait pid

end

