source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.1'

gem 'pg', '~> 0.18'
gem 'puma', '~> 3.12'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'


group :development, :test do

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'ed25519', '>= 1.2', '< 2.0'
  gem 'bcrypt_pbkdf', '>= 1.0', '< 2.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# AWSデプロイ用
gem 'dotenv-rails' # 開発環境で環境変数を操作するのに必要
  gem 'unicorn' # アプリケーションサーバのunicorn
  gem 'mini_racer', platforms: :ruby # デプロイ時に必要

  group :development, :test do
    gem 'capistrano', '3.6.0' # capistranoのツール一式
    gem 'capistrano-bundler'
    gem 'capistrano-rails'
    gem 'capistrano-rbenv'
    gem 'capistrano3-unicorn'
    # 以下省略
  end

gem 'bootstrap-sass', '~> 3.1.1'