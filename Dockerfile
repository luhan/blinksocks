FROM node:6.9.2
MAINTAINER Micooz<micooz@hotmail.com>

# environment varibles
ENV NODE_ENV production

# install pwgen
RUN apt-get --yes update
RUN apt-get install --yes pwgen

# install blinksocks
RUN npm install --global blinksocks

# expose ports
EXPOSE 1080

# run
COPY start.sh /start.sh
RUN chmod 755 /start.sh
CMD /start.sh
