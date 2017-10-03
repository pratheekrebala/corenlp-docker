#!/bin/bash

echo "Starting nlp. Params: $*";

set 

# cd stanford-corenlp-full-2015-12-09

#java -cp "*" -mx1g edu.stanford.nlp.pipeline.StanfordCoreNLPServer -port $PORT
java -cp "*" -Xmx2g -Dfile.encoding=UTF-8  edu.stanford.nlp.pipeline.StanfordCoreNLPServer -port $PORT
