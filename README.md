# pcf-cli-scripts

Contains scripts for ah developers, so that they can perform common operations against the ah pcf org
easily by calling these scripts.

## Note

Use these scripts from within this directory because some use others locally. I have the cloned folder named pcf/ to make it
easier to access.

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

## Pipeline

The pipeline for this repo is used to optimise PCF billing, by starting and stopping all apps in the ah PCF org whenever
the pipeline runs, depending on the time of day.

The travis build is invoked by a HTTP request webhook created by a cron job using a free online service.

This request comes loaded with an environment variable, CRON_JOB=true, which is checked by travis. This is used to prevent
the pipeline from running on every push, and instead running only when the pipeline is invoked by the cron job webhook.

## Cron job

Uses https://cron-job.org/en/ on a free-tier account (Vlad's) to invoke a HTTP request periodically. We have two
webhooks:

- one which occurs on every weekday at 0830
- another which occurs on every weekday at 1830

These both cause the travis pipeline of this repository to run fully, either starting or stopping all the apps in the PCF
org.
