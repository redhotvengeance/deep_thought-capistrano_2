require 'deep_thought'
require 'deep_thought-capistrano_2/deployer/capistrano2'

module DeepThought
  DeepThought::Deployer.register_adapter('capistrano2', DeepThought::Deployer::Capistrano2)
end
