## Introduction
tracker_cmd is user centric command line tool for pivotal tracker.

## Configuration
You'll need to provide you pivotal tracker api token and initials as either a
global git configuration or as environment variables.

### Git Configuration

    git config --global pivotal.token <API TOKEN>
    git config --global pivotal.initials <INITIALS>

### Environment variable configuration

    export PIVOTAL_TOKEN=<API TOKEN>
    export PIVOTAL_INITIALS=<INITIALS>