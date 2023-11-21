source 'https://rubygems.org'


gem 'rails', '4.2.6'
gem 'rails-api', '~>0.4', '>=0.4.0'
gem 'pry-rails', '~>0.3', '>=0.3.4'
gem 'rack-cors', '~>1.0', :require => 'rack/cors'

# Gems for our assets
gem 'sass-rails', '~> 5.0', '>=3.4.22'
gem 'uglifier', '~> 3.0', '>=3.0.2'
gem 'coffee-rails', '~> 4.1', '>= 4.1.0'
gem 'jquery-rails', '~> 4.4'
gem 'jbuilder', '~> 2.0', '>= 2.6.0'

group :development do 
	gem 'spring', '~>2.0', '>=2.0.0'
end

group :development, :test do
	gem 'webrick', '~>1.3', '>=1.3.1'
#	gem 'sqlite3', '~>1.3', '>=1.3.12'
#	gem 'pg', '0.20'
	gem 'spring', '~>2.0', '>=2.0.0'
	gem 'byebug', '~>9.0', '>=9.0.6'
	gem 'rspec-rails', '~> 3.5', '>=3.5.2'
	gem 'pry-byebug', '~>3.4', '>=3.4.0'
	gem 'httparty', '~>0.21'
end

group :production do 
	gem 'rails_12factor', '~>0.0', '>= 0.0.3'

end

gem 'pg', '0.20'
gem 'puma', '~>5.6', :platforms=>:ruby
gem 'mongoid', '~> 5.1', '>5.1.5'

# Gems for implementing Angular SPA
source 'https://rails-assets.org' do 
	gem 'rails-assets-bootstrap', '~>3.3', '>= 3.3.7'
	gem 'rails-assets-angular', '~>1.5', '>= 1.5.8'
	gem 'rails-assets-angular-ui-router', '~>0.3', '>= 0.3.1'
	gem 'rails-assets-angular-resource', '~>1.5', '>= 1.5.8'
end
