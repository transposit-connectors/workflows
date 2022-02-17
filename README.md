# workflows

Where general workflows live

## Deployments - Xerox.yml

We are configured to use [global-worflows-support](https://github.com/derberg/global-workflows-support) to replicate these workflows out to merge to master. this will copy all _other_ workflow files into all other repos in this organization.

Warning: it requires a specific github token to work, it is currently defined under paulijones's account. The token requires explicit repo and workflow access.

You can look at the configuration of [Xerox.yml](.github/workflows/xerox.yml) for all the details.
