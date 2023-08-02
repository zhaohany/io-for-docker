FROM alpine
RUN apk --no-cache add fio
ENV	MOUNTPOINT="/vmmount"
COPY start.sh /usr/local/bin/
RUN ["chmod", "+x", "/usr/local/bin/start.sh"]
CMD ["/usr/local/bin/start.sh"]