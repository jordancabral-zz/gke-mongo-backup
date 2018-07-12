FROM google/cloud-sdk:alpine
RUN apk update && apk add mongodb-tools && rm -rf /var/cache/apk/*
COPY mongobackup.sh /var/mongobackup/mongobackup.sh
RUN chmod 777 /var/mongobackup/mongobackup.sh
CMD /var/mongobackup/mongobackup.sh
