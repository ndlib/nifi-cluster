FROM apache/nifi:1.5.0
EXPOSE 8080 10000 80 8443
CMD ${NIFI_BASE_DIR}/scripts/start.sh
