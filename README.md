Geminabox docker image running on a minimal Ubuntu 14.04, ruby 2.2 + nginx and s6 as a process manager.
This image is using basic auth with a single user

Geminabox docker image
------------------- 

Building:

    docker build -t geminabox .

Environment variables that have to be set:
   USERNAME - your username
   PASSWORD - your password

You could also set:
    GEMINABOX_DATA - path where your gems are going to be stored
    GEMINABOX_WORKERS_COUNT - number of unicorn workers (defaults to 2)
