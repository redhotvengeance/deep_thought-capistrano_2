set :stages, %w(development staging production)
set :default_stage, "development"
require 'capistrano/ext/multistage'

set :branch, "master"

namespace :deploy do
  task :pass_test do
  end

  task :fail_test do
    updat
  end
end
