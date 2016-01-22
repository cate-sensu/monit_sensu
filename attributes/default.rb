default[:monit][:basedir] = '/etc/monit'

# Set daemon check interval
default[:monit][:daemon] = 120
default[:monit][:start_delay] = 240

# Httpd daemon for monit console
# Password is to access the web service portal
default[:monit][:httpd][:address] = "localhost"
default[:monit][:httpd][:port] = 2812
default[:monit][:httpd][:user] = "admin"
default[:monit][:httpd][:pass] = "monit"

# Mail alerts
default[:monit][:alert][:mail][:server] = "smtp.example.com"
default[:monit][:alert][:mail][:to] = "notify@example.com" 
default[:monit][:alert][:mail][:from] = "monit@example.com"
default[:monit][:alert][:mail][:cycles] = 10

# Slack alerts
default[:monit][:alert][:slack][:script_file] = "/etc/monit/slack.rb"
default[:monit][:alert][:slack][:uri] = "https://hooks.slack.com/services/xxxxxxxxxxxxxx"
default[:monit][:alert][:slack][:channel] = "#chan"
default[:monit][:alert][:slack][:username] = "mmonit"
