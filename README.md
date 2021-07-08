# Example dry-system app

## Requirements

- ruby 2.7.4
- gem `bundler`
- postgresql running (localhost:5432)

## Setup

- clone the repo,
- create a database named `dev_meeting_2021_07_14_example` for development,
- create a database named `dev_meeting_2021_07_14_example_test` for tests,
- run `cd dry_system_example` to enter the repo,
- run `cp .env.example .env`
- run `bundle install`

## Tests & Style

- run `bundle exec rspec` for specs,
- run `bundle exec rubocop` for style checks,

## Console

Run `./bin/console` for development or e.g. `EXAMPLE_ENV=test ./bin/console` if you want to set different environment.

## TODO

- db rake tasks,
- web app.
