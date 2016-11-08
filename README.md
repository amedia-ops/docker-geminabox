Geminabox docker image running on a minimal Ubuntu 14.04, ruby 2.2 + nginx and s6 as a process manager.
Basic auth is handled elsewhere.

Geminabox docker image
------------------- 

Building:

    docker build -t geminabox .

You could also set:
    GEMINABOX_DATA - path where your gems are going to be stored
    GEMINABOX_WORKERS_COUNT - number of unicorn workers (defaults to 2)
