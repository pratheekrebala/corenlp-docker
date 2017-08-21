FROM java:jre-alpine

MAINTAINER Moti Zilberman <motiz88@gmail.com>

RUN apk add --update --no-cache \
	 unzip \
	 wget

# https://nlp.stanford.edu/software/stanford-corenlp-full-2017-06-09.zip
RUN wget http://nlp.stanford.edu/software/stanford-corenlp-full-2017-06-09.zip
RUN unzip stanford-corenlp-full-2017-06-09.zip && \
	rm stanford-corenlp-full-2017-06-09.zip


WORKDIR stanford-corenlp-full-2017-06-09

COPY ./start.sh start.sh

RUN export CLASSPATH="`find . -name '*.jar'`"

#ENV PORT 9000

#EXPOSE $PORT
EXPOSE 9000

#CMD java -cp "*" -mx1g edu.stanford.nlp.pipeline.StanfordCoreNLPServer -port $PORT
CMD ["sh", "-x", "./start.sh"]
