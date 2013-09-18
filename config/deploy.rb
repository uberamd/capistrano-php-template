#
# esteam-capistrano-php-template
# Used to template PHP application deployments via capistrano
#

# You'll need to install both railsless-deploy and capistrano-ext in order
# for this to function properly
# If you aren't sure you have these do a: $ bundle install
require 'railsless-deploy'
require 'capistrano/ext/multistage'

# The application name can be anything you use to identify your app
set :application, "YOUR-APPLICATION-NAME-HERE"

# This will be the path to your git repository, available via the repo view
# in github. Be sure :scm is appropriately set based on what VCS you're using
set :repository,  "git@github.com:YOUR-GIT-REPO-HERE.git"
set :scm, :git

# Define the branches your application has:
#   staging: the test branch
#   production: live, stable code
#
# For each branch defined here you will need to create a matching branchname.rb file
# in the deploy directory.
#
# Note: you MUST NOT have a branch named test, it will cause failures
set :stages, ["staging", "production"]
set :default_stage, "staging"

# This is the user the deploy will run as. To keep things smooth, ensure the user
# has proper keys on the target systems and permissions to write to the applicable
# directories
set :user, 'YOUR-LOCAL-USER-NAME-HERE'

# This option will keep a git repo on the server itself, doing a fetch upon each 
# deploy. This is MUCH faster than the default which re-clones the whole repo each
# time you deploy
set :deploy_via, :remote_cache

# If you don't need sudo access for the deployment keep this as false
set :use_sudo, false

# These are the files that will be excluded in your deployment destination
set :copy_exclude, [".git", ".DS_Store", ".gitignore", ".gitmodules", "Capfile", "config/deploy.rb"]

# If you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"
