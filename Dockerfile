FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y python-pip python-dev && \
    pip install --upgrade pip && \
    pip install tensorflow==1.3 && \
    apt-get install -y git

RUN apt-get install -y curl

#RUN git clone https://github.com/GoogleCloudPlatform/cloudml-dist-mnist-example.git && \
#    cd cloudml-dist-mnist-example && \
#    PROJECT_ID="tf-test-175521" && \
#    BUCKET="gs://tf-test-175521-ml"
#
#WORKDIR cloudml-dist-mnist-example
#
#ENTRYPOINT ["./scripts/start-dist-mnist.sh", "/model", "/output"]
