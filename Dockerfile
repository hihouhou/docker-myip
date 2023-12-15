#
# Echoip Dockerfile
#
# https://github.com/
#

# Pull base image.
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >

# Update & install packages
RUN apt-get update && \
    apt-get install -y ruby

RUN gem install sinatra

# Copy code
COPY sinatra.rb /etc/sinatra/

CMD ["ruby", "/etc/sinatra/sinatra.rb"]
