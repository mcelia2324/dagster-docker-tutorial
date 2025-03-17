FROM python:3.12.4

RUN mkdir -p /opt/dagster/dagster_home /opt/dagster/app

# Install Dagster packages including dagster-daemon
RUN pip install dagster dagster-graphql dagster-postgres dagster-aws dagit dagster-docker

# Copy your code and workspace to /opt/dagster/app
COPY repo.py workspace.yaml /opt/dagster/app/

ENV DAGSTER_HOME=/opt/dagster/dagster_home/

# Copy dagster instance YAML to $DAGSTER_HOME
COPY dagster.yaml /opt/dagster/dagster_home/

WORKDIR /opt/dagster/app

EXPOSE 3001

# Use a script to start both dagster-webserver and dagster-daemon
COPY start.sh /opt/dagster/app/
RUN chmod +x /opt/dagster/app/start.sh
ENTRYPOINT ["/opt/dagster/app/start.sh"]