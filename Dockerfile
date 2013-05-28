# Puppet Agent
#
# Version 0.0.1

FROM base
MAINTAINER James R. Carr <james@zapier.com>

RUN apt-get update
RUN apt-get install -y wget
RUN wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb
RUN dpkg -i puppetlabs-release-precise.deb
RUN apt-get update

RUN apt-get install -y puppet ruby1.9.3 build-essential
RUN gem install librarian-puppet

# For laterz... when we have librarian-puppet install modules we'll put em under here
mkdir -p /tmp/puppet

