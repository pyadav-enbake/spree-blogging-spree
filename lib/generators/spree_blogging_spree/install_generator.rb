module SpreeBloggingSpree
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Configures your Rails application for use with BloggingSpree"

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_blogging_spree'
      end

      def run_migrations
          res = ask "Would you like to run the migrations now? [Y/n]"
          if res == "" || res.downcase == "y"
              run 'bundle exec rake db:migrate'
          else
              puts "Skipping rake db:migrate, don't forget to run it!"
          end
      end

    end
  end
end
