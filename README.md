<div align="center">
<h1>Capstone Demo App<em> Module 2</em></h1> 
<h2>Software Development Documentation</h2>
  <h3>
    <a href="#">
      Module 1
    </a>
    <span> | </span>
       
      Module 2
    </a>
    <span> | </span>
       <a href="#">
      Module 3
    </a>
    <span> | </span>
       <a href="#">
      Module 4
    </a>
    <span> | </span>
       <a href="#">
      Module 5
    </a>
    <span> | </span>
           <a href="#">
      Module 6
    </a>
    <span> | </span>
      <a href="#">
        Module 7
      </a>
    <span> | </span>
      <a href="#">
        Module 8
      </a>
  </h3>
</div>

<div align="center">
  <sub>
  <a href="https://github.com/appwebtech">Joseph M Mwania</a> Ruby on Rails Specialisation Capstone
  </a>
</div>


<h2>Table of Contents</h2>
- [Introduction](#introduction)
  - [Server Side](#server-side)
  - [Client Side](#client-side)
- [Technical Architecture Diagram](#technical-architecture-diagram)
- [DB and File Storage](#ruby-on-rails-web-services-and-integration-with-mongodb)
- [Application Frameworks and Languages](#application-frameworks-and-languages)
- [Coding Environment](#coding-environment)
- [App Setup](#app-setup)
- [DB yml environment set-up](#db-yml-environment-set-up)
- [What the App should do](#what-the-app-should-do)
- [RDBMS Backed Resource](#rdbms-backed-resource)
- [MongoDB Backed Resource](#mongodb-backed-resource)
- [Regression Testing](#regression-testing)
- [Web Service Finishing Touches](#web-service-finishing-touches)
    - [RDBMS side](#rdbms-side)
    - [Mongo side](#mongo-side)
- [CORS](#cors)
- [API Deployment](#api-deployment)

## Introduction 
The development environment is the same as the previous module, and the focus is on the transition from development to production with Angular developed in concert with Rails. So there is much to do with Frontend Rails Server. 

I'll start off with three development environments; 
- **Asset pipeline** 
- **External Development** 
- **External development deployed to Rails** using Rails as a web server (a Hybrid of the previous two).

Even though I have the liberty to  choose only one path as far as development environment is concerned, I will be doing all three as a technical reference architecture.

## Coding Environment

```
- macOS Sierra Version 10.12.5 (Running on an iMac)

- OS X El Capitan Version 10.11.6 (Running on a Macbook Pro)
  (Using different specs eg Rails 5, Puma, etc for comparison purporses)

- Firefox (v45.7.0 ESR) ~ Extended Support Release

- ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin16]

- Rails 4.2.6 

- Rails 4.2.6  (Will scaled back from rails 5.0.2 to curb esoteric issues)

- Rails-api '~>0.4', '>=0.4.0'

- Homebrew 1.1.9

- rbenv 1.1.0 

- Git v2.11.1 

- PostgreSQL 9.6.1

- Mongo DB version v3.4.2

- NodeJS v6.6.0

- ImageMagick 7.0.4-7 Q16 x86_64 2017-02-04

- PhantomJS v2.1.1

- Chrome Driver for selenium 
  2.27.440174 (e97a722caafc2d3a8b807ee115bfb307f7d2cfd9)

- Editor: Sublime text 3 

```

## Web Resources and Asset Pipeline 


### Asset Pipeline Background

I've readied the API-centric server for SPA deployment (Gems, Asset directories and manifests, Server updates, HTML page updates, etc), subsequent to which I'll begin Angular modules.

I'll run a scaffold with the name of foos to implement the basic core functionalities, do migrations then log to localhost:300/foos after running the server (**rails s**).  If I view the page source, I will see the following; 

```HTML

<!DOCTYPE html>
<html>
<head>
  <title>JoeDemoapp</title>
  <link rel="stylesheet" media="all" href="/assets/foos.self-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.css?body=1" data-turbolinks-track="true" />
<link rel="stylesheet" media="all" href="/assets/scaffolds.self-8b5f30fd3e760e123e57cd94596052e7568bedeba69781fc5a2c86d5d0c82c43.css?body=1" data-turbolinks-track="true" />
<link rel="stylesheet" media="all" href="/assets/application.self-e80e8f2318043e8af94dddc2adad5a4f09739a8ebb323b3ab31cd71d45fd9113.css?body=1" data-turbolinks-track="true" />
  <script src="/assets/jquery.self-bd7ddd393353a8d2480a622e80342adf488fb6006d667e8b42e4c0073393abee.js?body=1" data-turbolinks-track="true"></script>
<script src="/assets/jquery_ujs.self-784a997f6726036b1993eb2217c9cb558e1cbb801c6da88105588c56f13b466a.js?body=1" data-turbolinks-track="true"></script>
<script src="/assets/turbolinks.self-1d1fddf91adc38ac2045c51f0a3e05ca97d07d24d15a4dcbf705009106489e69.js?body=1" data-turbolinks-track="true"></script>
<script src="/assets/foos.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js?body=1" data-turbolinks-track="true"></script>
<script src="/assets/application.self-3b8dabdc891efe46b9a144b400ad69e37d7e5876bdc39dee783419a69d7ca819.js?body=1" data-turbolinks-track="true"></script>
  <meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="hOB7potp6elionqTJA+tBjTWBAoWpiKZsgDCBsWNrBHQLw6LWz35lnpgP6nwI1p6eRDeqgv0Om67+I5pONAcBA==" />
</head>
<body>

<p id="notice"></p>

<h1>Listing Foos</h1>

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
  </tbody>
</table>

<br>

<a href="/foos/new">New Foo</a>


</body>
</html>

```


If I ran the server in production mode (**rails s -production**) then view the page source again, it will look condensed due to the rails asset pipeline. 

```HTML

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<HTML>
  <HEAD><TITLE>Internal Server Error</TITLE></HEAD>
  <BODY>
    <H1>Internal Server Error</H1>
    Missing `secret_token` and `secret_key_base` for 'production' environment, set these values in `config/secrets.yml`
    <HR>
    <ADDRESS>
     WEBrick/1.3.1 (Ruby/2.3.1/2016-04-26) at
     localhost:3000
    </ADDRESS>
  </BODY>
</HTML>

```

The rails asset pipeline can be understood better by viewing the source code. Below is the content area of the view (**index.html.erb**) which extends the **application.html.erb** under layouts. 

Notice how the application.html.erb contains a set of helper tags (**stylesheet_link_tag** & **javascript_include_tag**) which reference to the CSS and Javascript manifests? 

Notice also the flags for the turbolinks and the **<%= yield %>** statement which calls the content that we write in the views? Just thought I should be explicit on that because I will mention them a lot later, and especially for the folks who download ruby applications from my repos. 

The JS manifest (application.js) lists a few modules, jquery, turbolinks and a wildcard construct which I guess we won't be asked to use during the course. 
The CSS manifest doesn't list anything apart from the wildcard construct.


*index.html.erb*
![index.html.erb](https://user-images.githubusercontent.com/13242902/27804594-0ba19508-6030-11e7-93e4-026b18398edc.png)
<hr>

*application.html.erb*
![application.html.erb](https://user-images.githubusercontent.com/13242902/27804595-0be536fa-6030-11e7-9b9b-ee16e717c986.png)
<hr>


As you may have noticed now, the aim of taking you through this FrontEnd process is to show you how in Dev mode the links you saw in the first HTML code are linked to the JS and CSS manifests. 

In Production mode, the asset linkss source code is compressed to enhance **Browser Asset Performance Costs**. Each HTTP/HTTPS reference in a source file requires a separate connection from browser to server; this connections are expensive. Larger contents take time to load. 

Solutions for expensive connections are; 
- Concatenate resources (Fewer resource files & fewer connections)
- Resources reloaded per page. (Turbolinks turns a multi-page server-side application into a pseudo single-page application)
- Address Large Contents 
    * Compress JS & CSS source code
    * Leverage a Content Distribution Source (CDN) eg cloudflare

In the case of this app, *uglifier* and *sass rails* gems are compressing my JS and CSS assets respectively. This can easily be toggled in config/environments/production.rb with the following two liners;

```ruby
  config.assets.js_compressor = :uglifier
  config.assets.css_compressor = :sass
```

I'll precompile my assets again and print out the concatenated CSS view.

![screen shot 2017-07-03 at 22 02 57](https://user-images.githubusercontent.com/13242902/27806646-0e295cc8-603c-11e7-8b7e-a12ba0dcb788.png)
![screen shot 2017-07-03 at 22 05 03](https://user-images.githubusercontent.com/13242902/27806647-0e2e4a08-603c-11e7-85b5-d902dee9fd9a.png)
![screen shot 2017-07-03 at 22 07 05](https://user-images.githubusercontent.com/13242902/27806648-0e320abc-603c-11e7-8dcd-337b7956d33e.png)
<hr>

JS has already been concatenated but the compressed code would fill several pages if I were to include it here. The methodology is the same though. 

So If the manifests were listing things, where were they getting the things they were listing? Let's hit the console. 

Listing out the asset path, we see paths coming from different locations. 
- The first three come from the **source/application directory** 
- The next pair are under **vendor** for stuff installed locally
- The **lib** (not listed) or our own stuff to stay organised.
- The last three are from the **gems**

*Asset Pipeline in Console*
![Assets](https://user-images.githubusercontent.com/13242902/27805383-a6a1b304-6034-11e7-8f59-524ac212e35d.png)


## Asset Pipeline Packaging 

I'll start readying the API-centric server for SPA deployment. I won't go in depth about what I'm doing like I did in the previous topics and especially in module one, but I'll explain new material from the instructor and other personal stuff that makes rails development interesting.

Here I'll touch on the Gems, Asset directories and manifests, Server updates (for pre-compiles of assets) and HTML page updates (Like the homepage that is under construction).

This will allow me to start development with Angular modules in the Frontend of the SPA.

I'll checkout to a new branch (asset-pipeline) and add gems to implement the asset pipeline. 

source 'https://rubygems.org'

```ruby
gem 'rails', '4.2.6'
gem 'rails-api', '~>0.4', '>=0.4.0'
gem 'pry-rails', '~>0.3', '>=0.3.4'
gem 'rack-cors', '~>0.4', '>=0.4.0', :require => 'rack/cors'

# Gems for our assets
gem 'sass-rails', '~> 5.0', '>=3.4.22'
gem 'uglifier', '~> 3.0', '>=3.0.2'
gem 'coffee-rails', '~> 4.1', '>= 4.1.0'
gem 'jquery-rails', '~> 4.2', '>= 4.1.0'
gem 'jbuilder', '~> 2.0', '>= 2.6.0'

group :development do 
    gem 'spring', '~>2.0', '>=2.0.0'
end

group :development, :test do
    gem 'webrick', '~>1.3', '>=1.3.1'
#   gem 'sqlite3', '~>1.3', '>=1.3.12'
#   gem 'pg', '0.20'
    gem 'byebug', '~>9.0', '>=9.0.6'
    gem 'rspec-rails', '~> 3.5', '>=3.5.2'
    gem 'pry-byebug', '~>3.4', '>=3.4.0'
    gem 'httparty', '~>0.14', '>=0.14.0'
end

group :production do 
    gem 'rails_12factor', '~>0.0', '>= 0.0.3'

end

gem 'pg', '0.20'
gem 'puma', '~>3.6', '>=3.5.2', :platforms=>:ruby
gem 'mongoid', '~> 5.1', '>5.1.5'

# Gems for implementing Angular SPA
# https://rails-assets.org provides frictionless proxy between Bundler and Bower.
source 'https://rails-assets.org' do 
    gem 'rails-assets-bootstrap', '~>3.3', '>= 3.3.7'
    gem 'rails-assets-angular', '~>1.5', '>= 1.5.8'
    gem 'rails-assets-angular-ui-router', '~>0.3', '>= 0.3.1'
    gem 'rails-assets-angular-resource', '~>1.5', '>= 1.5.8'
end
```

 We now have more paths (angular) to include in our application. 

![new_assets](https://user-images.githubusercontent.com/13242902/27807769-44bb669e-6043-11e7-87e6-580c8d53b133.png)
<hr>

I'll create DIRs for the stylesheets and JS assets under app/assets, then create manifest files for each.

Next I'll register them with the server to pre-compile them and make them available for us to reference. {I'll create a file, **assets.rb** in config/initializers path, and store the two mabifests as arrays. *Take a peek in the application for code*}

In the console, you can see the two files translated in an array of strings.
```shell
Loading development environment (Rails 4.2.6)
[1] pry(main)> %w( spa-demo.js spa-demo.css )
=> ["spa-demo.js", "spa-demo.css"]
[2] pry(main)>
```

Our three files added. 
```shell
JosembiMac:joe_demoapp josembi@gmail.com$ tree app/assets/ config/initializers
app/assets/
├── images
├── javascripts
│   └── spa-demo.js
└── stylesheets
    └── spa-demo.css
config/initializers
├── assets.rb
├── filter_parameter_logging.rb
├── secret_token.rb
└── wrap_parameters.rb

3 directories, 6 files
```

To check if all is working fine, I'll change the "under construction" on the UI view and replace it with an embedded ruby boilerplate code referencing the spa-demo manifests; let's echo an h1 of Hello. 

```erb
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-compatible" content="ie=edge, chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <%= stylesheet_link_tag "spa-demo", :media => "all" %>
        <%= javascript_include_tag "spa-demo" %>
    </head>
    <body>
            <div class="container">
                <h1>Hello</h1>
                <span>(from app/views/ui/index.html.erb)</span>
            </div>
    </body>
</html>
```

My localhost is showing the UI correctly. 
![screen shot 2017-07-03 at 23 38 30](https://user-images.githubusercontent.com/13242902/27808539-c6d2294c-6048-11e7-9c98-fbd8e5e6c3e5.png)
<hr>

The source file from my localhost is linking to my manifest files correctly as expected. 


```HTML
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-compatible" content="ie=edge, chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" media="all" href="/assets/spa-demo.self-9ad9eaaba8b4b6e18301e558f0123c9a24b7103b282b518b0843ac3e4973db77.css?body=1" />
        <script src="/assets/spa-demo.self-d8a46cfe42f3ef5341495e8ac3b418bd2dc954dc8a7bcfe884bbb23fe57d69c0.js?body=1"></script>
    </head>
    <body>
            <div class="container">
                <h1>Hello</h1>
                <span>(from app/views/ui/index.html.erb)</span>
            </div>
    </body>
</html>
```

At this point, I'm sure that my asset DIR is created correctly, the manifest files are referencing correctly from the **asset.rb** file within the **initializers** folder and the html file is also referencing correctly the manifests using the CSS and JS tags.

Awesome! I'll add data (eg *require bootstrap*, *require jquery*, etc) in the manifest files (*navigate to see code in the app*) and the source is referenced accordingly. 


```HTML
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-compatible" content="ie=edge, chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" media="all" href="/assets/bootstrap.self-96a1cbefba2066f7a3e85de9a655597a65e7514c6fa4c3168e6b2d7dd3bc9b77.css?body=1" />
<link rel="stylesheet" media="all" href="/assets/spa-demo.self-a83dbd88eb86e6627c720c95c1cbe134c9b69cdb8fe01361b59e4c71f2dea67c.css?body=1" />
        <script src="/assets/jquery2.self-25ca496239ae8641a09627c8aace5863e7676e465fbb4ce81bc7eb78c4d15627.js?body=1"></script>
<script src="/assets/bootstrap/bootstrap.self-b38817c3e3a3049abb1fc08dd6ae448b23330f8453226efdb074710209474f75.js?body=1"></script>
<script src="/assets/bootstrap.self-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.js?body=1"></script>
<script src="/assets/angular/angular.self-cbf63dfe20595c76ecb6316dfb062fd913b424590ff80a8c5ada4bd82672b703.js?body=1"></script>
<script src="/assets/angular.self-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.js?body=1"></script>
<script src="/assets/angular-ui-router/angular-ui-router.self-8d1a567702decda3c48178b8db54b5b9dbe23f0f7b137aca5d7f2fa843efc7e1.js?body=1"></script>
<script src="/assets/angular-ui-router.self-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.js?body=1"></script>
<script src="/assets/angular-resource/angular-resource.self-7cce3b8707c34fb59333dba5b82c7f6668fe3a0d75b285f65421c851161aae02.js?body=1"></script>
<script src="/assets/angular-resource.self-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.js?body=1"></script>
<script src="/assets/spa-demo.self-29493403fb85d1b36bde5cadef5f763bc498e1ed4a2fa791065972f55d74712f.js?body=1"></script>
    </head>
    <body>
            <div class="container">
                <h1>Hello</h1>
                <span>(from app/views/ui/index.html.erb)</span>
            </div>
    </body>
</html>
```

All the resources needed are in place and it's now possible to start defining the angular application. 

I'll add the angularJS directives within the UI index.html.erb file (*search code in the app*) then run the browser console to make sure it throws an error. This will ascertain that the angular libraries are being found. 

Cool! isn't it?
![browser console](https://user-images.githubusercontent.com/13242902/27808991-3ca28c40-604c-11e7-9a96-4c2ff009f7f9.png)
<hr>

## Asset Pipeline Deployment 

I will be deploying my skeleton SPA and see how it behaves and if everything works as I expect.


## External SPA Packaging with Gulp 

## External Web Client Packaging with Gulp 

### Web client development outside of Rails Asset Pipeline 

### One of many web client environments 
    - Node Package manager
    - Bower
    - Gulp tasks 

### Goal: Reach same state as I did with Asset Pipeline without the direct use of Rails or Ruby 
 The aim of taking this approach is to show that there are alternative ways besides Rails, and that one can branch out to them instead of getting watered down to Rails environment. 

 I'll develop a separate web app and deploy to browser, independent of the overall Rails back end. I'll focus on the Backend Rails API with the SPA application delivering the browser experience; the two will communicate together through web services.

## What are the Alternatives?

### Rails Asset Pipeline
 The first approach that I can use is to take the web client and package it within the Asset Pipeline, that way it would communicate through web services and the API code running on the Rails server. This is kinda cool as it would provides me with a single SourceTree, a single deployment and things can get relatively simple. In my view, Asset Pipeline is not the best approach because I dont have access to Gem, Bundler etc; but this can be mitigated by [Gulp](http://gulpjs.com/) which is a Node Package Manager (NodeJS) which  does a lot of low-level packages like Bower, Gulp tasks and also manages higher-level packages like Angular, Bootstrap, etc. 

### External Deployment
 However, given the complexities of web clients, they may need to break out of the Rails household and become their own separate application with different module dependencies and whatnot. Once the applications are broken, then there are the options of deploying to alternative environments like GitHub and leave Rails to deploying only the API Code. 

### External Deployment in / public
Lastly, there is the in-between alternative, where I can do all of the independent development that I want on the web client, but I still end up using the Rails' web server as a web server and deploy the distribution artifact into the public directory. Rails is not the much wiser that that application is there, and it continues to communicate through web services, albeit locally, and not actually over the Internet. 

![screen shot 2017-02-20 at 22 10 40](https://cloud.githubusercontent.com/assets/20464709/23141944/8bd5fd3e-f7b9-11e6-9745-7cd1c94d0587.png)

## Gulp Development Setup
 








