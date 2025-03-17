#!/bin/bash

# Start the Dagster daemon in the background
dagster-daemon run &

# Start the Dagit UI in the foreground
dagster-webserver -h 0.0.0.0 -p 3001
