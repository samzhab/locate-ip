## locate ip
![temporary logo](https://bt-strike.s3-us-west-2.amazonaws.com/images/ruby.gif "locate ip temporary logo")
Uses https://ip-api.com to get information on a url or an ip address
* json result
  * as, city, country, countryCode, isp, lat, lon, org, query, region, regionName, status, timezone, zip

Prerequisites:
* rvm (rvm.io)
* ruby interpreter (2.0+)
* required gems (see Gemfile)
* linux terminal

Current State:
* returns results as json

Features to add [coming soon...]
* show result in another format
* allow multiple searches at a time

Setup usage with rvm and process event series:
* create a gemset
`$ rvm gemset create <gemset>`
eg. `$ rvm gemset create get_my_news`
* use created gemset
`$ rvm <ruby version>@<gemset>`
* install bundler gem
`$ gem install bundler`
* install necessary gems
`$ bundle`
* create folder 'articles'
`$ mkdir articles`
* make script executable
`$ chmod +x <script_name.rb>`
* run script
`$ ./<script_name.rb>`
