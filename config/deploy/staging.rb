# This is the target server for staging aka test, replace foo with
# the name of the server
server "staging.example.com", :app, :primary => true

# This is the path on the server where the releases and current
# pointer live. Ensure the deploy user has write permissions 
# here and that your apache configs are serving from the 
# current/public directory within this path
# Your full application path will become:
#   /var/www/your-application-path/current/public/
# Setup apache accordingly
set :deploy_to, "/var/www/your-application-path"

# Finally we define the branch name we should be pulling from, 
# if you use staging as your test-ready code branch then 
# leave this as-is
set :branch, 'staging'

# If using MySQL Migrations, set the dbname, uname, and pass here
#set :mysql_params, "-u user -ppassword"
#set :mysql_db_name, "database_name"
