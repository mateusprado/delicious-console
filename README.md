## OVERVIEW

Store yours URL's on Delicious using your terminal console

    GIT URL: https://github.com/mateusprado/delicious-console/

## TECHNICAL

 using:
	
	Thor - to create executables and tasks.
	

## CURRENT FEATURES

* For now:
	 * get all bookmarks;
	 * and add urls with descriptions;
	
## DEVELOPMENT	
Clone the project:

	$ git clone git://github.com/mateusprado/delicious-console.git
		
Setup and install Gems:

	$ cd delicious-console
	$ # bundle install
	
## TEST

 use RSpec for unit test, run:
	
    $ # rspec
    
## HOW_TO

Install

	$ gem install delicious-console
	
Setup. Create file on your home:
	
	$ vim ~/.delicious_config
	  username: "your_delicious_user_name"
	  password: "your_delicious_password"

Run:
To view all options:
	
	$ delicious

Fetch all bookmarks: 
	
	$ delicious posts
	
To add bookmark:

	$ delicious add htt://locaweb.com.br Locaweb

## Copyright
Copyright © 2012 Mateus Prado.