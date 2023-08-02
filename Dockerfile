FROM alpine
RUN apk --no-cache add fio
ENV	MOUNTPOINT="/vm_mount"
COPY start.sh /usr/local/bin/
CMD ["/usr/local/bin/start.sh"]