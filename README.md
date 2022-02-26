![Notearama workflow](https://github.com/tflem/note_a_rama/actions/workflows/notearama.yml/badge.svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/d4a02ea42439340f3dfa/maintainability)](https://codeclimate.com/github/tflem/note_a_rama/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/d4a02ea42439340f3dfa/test_coverage)](https://codeclimate.com/github/tflem/note_a_rama/test_coverage)

# Note-A-Rama

> This is just a simple note-taking application, featuring Turbo. I'm using the following tools:

- Ruby on Rails 7.0.2.2
- Ruby 3.1.1
- HTML5 and Sass
- PostgreSQL (Tested for 13.x)
- Testing: Minitest
- Code Bundler: esbuild
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