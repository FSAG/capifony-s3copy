# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require "capifony-s3copy/version"

Gem::Specification.new do |spec|
  spec.name         = 'capifony-s3copy'
  spec.version      = Capifony::S3Copy::VERSION
  spec.platform     = Gem::Platform::RUBY
  spec.summary      = %q{Deploy Capifony via AWS S3.}
  spec.description  = %q{Capistrano deployment strategy for Capifony that transfers the release via Amazon S3.}

  spec.authors      = ['Nikolai Zujev']
  spec.email        = ['nikolai.zujev@gmail.com']
  spec.homepage     = 'https://github.com/jaymecd/capifony-s3copy'
  spec.license      = 'MIT'

  spec.files        = Dir.glob("{lib}/**/*") + %w(README.md LICENSE)
  spec.extra_rdoc_files = ['README.md']

  spec.add_runtime_dependency 'capistrano-s3copy-awscli', '~> 0.1'
end
