# the simple fundamentals of programming
## flashcards and definitions

## about
This app shows definitions of fundamental terms to programming and gives simple, accessible definitions. Once signed in, users can add comments to these flashcards. They can also edit and delete their comments.

![screenshot of the app]()

## links
- [front-end/production live link, i.e. the actual webiste](https://hashbangash.github.io/simple-fundamentals-client/)
- [front-end/api repository](https://github.com/hashbangash/simple-fundamentals-client) -- please visit this link to read about my planning, process, and problem-solving.
- [back-end/api live link](https://simple-fundamentals.herokuapp.com/cards)

## set up
To use this open-source repository yourself, you can clone from GitHub, [follow these instructions for the rails-api-template](https://git.generalassemb.ly/ga-wdi-boston/rails-api-template), and run these commands to set up a local development environment:
- `bundle install`
- `bin/rails server`

You can deploy your own site on your Heroku if you've forked and cloned this repository. In that case, ensure you follow all the instructions in the [rails-heroku-setup-guide](https://git.generalassemb.ly/ga-wdi-boston/rails-heroku-setup-guide) to succesfully deploy.

## dependencies
- [rails-api-template](https://git.generalassemb.ly/ga-wdi-boston/rails-api-template)

## technologies used
- Rails
- Ruby
- Heroku
- various production and development rails packages viewable in the [Gemfile](./Gemfile)
- various front-end technologies (see [front-end repository](https://github.com/hashbangash/simple-fundamentals-client) for more info)

## [user stories and an ERD](https://media.git.generalassemb.ly/user/25387/files/9af7f100-7272-11ea-8068-a2c8264a4ae6)

## catalog of routes for api
- GET https://simple-fundamentals.herokuapp.com/cards
- GET https://simple-fundamentals.herokuapp.com/comments
- POST https://simple-fundamentals.herokuapp.com/comments
- PATCH https://simple-fundamentals.herokuapp.com/comments/:id
- DELETE https://simple-fundamentals.herokuapp.com/comments/:id
