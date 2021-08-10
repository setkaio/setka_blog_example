# Setka Editor Demo Application

Sample application to show [custom integration](https://setka.gitbook.io/help-center/api/setka-editor-api) basic options using the [SetkaIntegration gem](https://github.com/setkaio/setka_integration).

## Installation

Set up database options in `config/database.yml` and run:
```
bundle install
bundle exec rails db:create db:migrate db:seed
bundle exec foreman start
```

## Usage

View existing posts and create new ones!
