# Capifony::S3Copy

**Copy-via-S3** deployment strategy for Capifony, extends [capistrano-s3copy-awscli](https://github.com/jaymecd/capistrano-s3copy-awscli) strategy.

## Build

    $ gem build capifony-s3copy.gemspec
    $ gem install --local capifony-s3copy-[version].gem

## Usage

Follow [capistrano-s3copy-awscli](https://github.com/jaymecd/capistrano-s3copy-awscli) documentation.

In your deploy.rb file, we need to tell Capistrano to adopt our new strategy:

    require "capifony-s3copy" (instead of capistrano-s3copy-awscli)

    set :deploy_via, :capifony_copy_s3
