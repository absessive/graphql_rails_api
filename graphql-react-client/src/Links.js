import React, { Component } from 'react'
import Link from './Link'
import { Query } from 'react-apollo'
import gql from 'graphql-tag'

const LINKS = gql`
  query {
    links {
      id
      url
      description
    }
  }
`

class Links extends Component {
  render() {
    return (
      <Query query={LINKS}>
      {({ loading, error, data }) => {
        if (loading) return <div>Loading...</div>
        if (error) return <div>Error</div>

        const linksToRender = data.links

        return (
          <div>
            <h3>Neat Links</h3>
            <div>
              {linksToRender.map(link => <Link key={link.id} link={link} />)}
            </div>
          </div>
        )
      }}
      </Query>
    )
  }
}

export default Links
