# README

This is based out of https://haughtcodeworks.com/blog/software-development/graphql-rails-react-standalone/.

# GraphQL Subscriptions Tutorial
This is still a work in progress and only serves as a learning exercise. I will try to keep this functional, and add more to this.

## Pre-requisites
1. Running local Redis instance. Mine is running on port 7504.

## Setup
1. Install dependencies and set up DB
`bundle install`
`rails db:create`
`rails db:migrate`
2. Start Rails server. I am using port 3002.
`rails s -p 3002`

### Backend
TBD
Rails app with a Sqlite DB.

### Frontend
TBD
React app using Apollo client

### GraphQL query tool
I've used Altair.
While setting up Altair, use the g
For the GraphQL endpoint, use the endpoint set up, for e.g. `ws://localhost:3002/cable`. Ensure that `Rails ActionCable` option is selected.
#### Sample Query
```
subscription {
  newLink {
   	description
    id
    url
  }
}
```
Hit Run subscription in Altair. If everything is set up right, you should see a Rails log message `Successfully upgraded to Websocket`

### Execution
Fire up rails console, and create a new link.
```
Link.create! url: 'http://www.reddit.com', description: 'Reddit'
```

## Notes
### Frontend
1. Install the JS GraphQL client apollo
`npm install apollo-boost react-apollo graphql --save`
2. CORS protection (TBD). Since Altair is an external client, Rails rightly rejects traffic. For now I've added it to the ActionCable whitelist in `development.rb`
```
config.action_cable.allowed_request_origins = ['electron://altair']
```

## Contributions
Feel like you can make this better? Feel free to fork, or even better create a PR so that this benefits more people.

## Credits
I started this from the tutorial in https://haughtcodeworks.com/blog/software-development/graphql-rails-react-standalone/ which is great place to do this follow this step by step.
