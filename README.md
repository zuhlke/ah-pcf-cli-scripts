# pcf-cli-scripts

Contains scripts for ah developers, so that they can perform common operations against the ah pcf org
easily by calling these scripts.

## Usage

In order to use most of these scripts, you need to log in.

For example, I log in with the command `./login robert.moore`.

You can log out with `./logout`

To look at the pcf spaces associated with the org, use `./list-spaces`, which is based on the cf-cli command
`cf spaces`.

You can check the space you are current targeting with `./current-space`. This is based on the cf-cli command
`cf target`, with which you can also get the api host for the pivotal public cloud installation, which you need to
connect many tools to pcf.

You can start and stop all apps within the current space, or across the whole org, using the appropriately named
scripts.
