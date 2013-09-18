PHP and Capistrano for Deployments
=====================================

Using this is relatively straight-forward. Be sure you have ruby, rubygems,
and bundler installed on your system.

Next create a directory within your current project and name it "public". This
"public" directory will serve as your new project docroot. Move all of your
code into this directory. Your structure should look similar to this now:

    .
    └── public
        ├── some_file_you_made.php
        ├── ... 
        └── index.php

Now clone this project into the directory where public resides. This will create
new files as well as a new directory named "config". Your new structure will look
like this:

    .
    ├── Capfile
    ├── Gemfile
    ├── config
    │   ├── deploy
    │   │   ├── production.rb
    │   │   └── staging.rb
    │   └── deploy.rb
    └── public
        ├── some_file_you_made.php
        ├── ... 
        └── index.php

Modify the config/deploy.rb, config/deploy/[production, staging].rb files as
indicated by the comments located within. If you are unsure about whether or
not you have the required gems (as indicated at the top of deploy.rb), run a
simple:

    $ bundle install

When ready to deploy use the following syntax to push code to test:

    $ cap staging deploy

And to deploy to production do a:

    $ cap production deploy

Not specifying staging or production will default to your staging location.

Be sure you make the needed git commits before trying to deploy the first time,
your code branches MUST be up to date on the remote git server before deploying
will work as code is NOT deployed from your local machine but from the git repo.
