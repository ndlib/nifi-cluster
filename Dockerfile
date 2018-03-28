FROM apache/nifi:1.5.0
EXPOSE 8080 80 8443 10000
CMD ${NIFI_BASE_DIR}/scripts/start.sh
