FROM		ubuntu:14.04
#MAINTAINER	Lucas Heinlen <lucas.heinlen@gmail.com> (original author)
MAINTAINER	Vinod Halaharvi <vinod.halaharvi@gmail.com>


RUN	apt-get update && \
	apt-get install -y ruby2.0 && \
	gem install geminabox && \
	mkdir -p /opt/geminabox/
ADD	files/config.ru /opt/geminabox/config.ru
VOLUME	["/opt/geminabox/data"]
EXPOSE	9292
WORKDIR /opt/geminabox
CMD	["/usr/local/bin/rackup"]
