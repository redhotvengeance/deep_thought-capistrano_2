# Deep Thought Capistrano 2 Deployer

Deploy via Capistrano (2.x.x) with Deep Thought.

## Install it

    gem install deep_thought-capistrano_2

## Require it

In your Deep Thought's `config.ru`:

   require "deep_thought"
   require "deep_thought-capistrano_2"

   DeepThought.setup(ENV)

   run DeepThought.app

## .deepthought.yml it

For your Capistrano (2.x.x) projects, set the `deploy_type` to "capistrano2":

    deploy_type: capistrano2

## Use it

Deploy any branch to any environment.

The deployer always calls the `deploy` namespace - all actions passed to a deploy will fall under that namespace. For example, setting an action to "config" will call "deploy:config".

`branch`, `box`, and variables are passed as Capistrano variables via the `-s` flag.

Check out the [base example](https://github.com/redhotvengeance/deep_thought-capistrano_2/tree/master/examples/base) for an easy place to start writing a Deep Thought-friendly Capistrano recipe.

## Hack it

Find an issue? Want to make the deployer more robust?

Set it up:

    script/bootstrap

Create an `.env`:

    echo RACK_ENV=development > .env

Set up the databases (PostgreSQL):

    createuser deep_thought
    createdb -O deep_thought -E utf8 deep_thought_development
    createdb -O deep_thought -E utf8 deep_thought_test
    rake db:migrate

Test it:

    script/test

## Contribute it

1. Fork
2. Create
3. Code
4. Test
5. Push
6. Submit
7. Yay!
