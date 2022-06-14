![Notearama workflow](https://github.com/tflem/note_a_rama/actions/workflows/notearama.yml/badge.svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/d4a02ea42439340f3dfa/maintainability)](https://codeclimate.com/github/tflem/note_a_rama/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/d4a02ea42439340f3dfa/test_coverage)](https://codeclimate.com/github/tflem/note_a_rama/test_coverage)

# Note-A-Rama

> This is just a simple note-taking application, featuring Hotwire as well as:

- Ruby on Rails 7.0.3
- Ruby 3.1.2
- HTML5 and Sass 1.52.3
- PostgreSQL (Tested for 14.x)
- Testing: Minitest
- Code Bundler: esbuild 0.14.43
- Continuous Integration/Deployment: Github Actions/Heroku

## Setup

How to run tests:

```
% rails test or rails t for short
```

How to run the development console:

```
% rails console or rails c for short
```

How to run the development server:

```
% rails server or rails s for short
```

How to prepare (create and migrate) DB for `development` and `test` environments:

```
% rails db:create

% rails db:migrate
```
