require 'capistrano/recipes/deploy/strategy/s3_copy'
require 'capifony_symfony2'

module Capistrano
  module Deploy
    module Strategy
      class CapifonyCopyS3 < S3Copy
        print "--> Using Copy AWS S3 Strategy\n"
        # Deploy (same as CapifonyCopyLocal)
        def deploy!
          copy_cache ? run_copy_cache_strategy : run_copy_strategy
          create_revision_file
          $temp_destination = destination  # Make temp location avaliable globally.
          symfony.composer.install
          symfony.bootstrap.build
          compress_repository
          distribute!
        ensure
          rollback_changes
        end
      end
    end
  end
end
