# This is the target server for production, replace foo with
# the name of the server
server "foo.example.com", :app, :primary => true

# This is the path on the server where the releases and current
# pointer live. Ensure the deploy user has write permissions 
# here and that your apache configs are serving from the 
# current/public directory within this path
# The full path to your site will become:
#   /var/www/your-application-path/current/public/
# Setup apache accordingly
set :deploy_to, "/var/www/your-application-path"

# Finally we define the branch name we should be pulling from, 
# if you use master as your production-ready code branch then 
# leave this as-is
set :branch, 'master'

# If using MySQL Migrations, set the dbname, uname, and pass here
#set :mysql_params, "-u user -pYOURPASSWORD"
#set :mysql_db_name, "database_name"
