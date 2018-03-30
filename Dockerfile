FROM apache/nifi:1.5.0
EXPOSE 8080 10000 80 8443
COPY --chown=nifi:nifi start.sh ${NIFI_BASE_DIR}/scripts/
CMD ${NIFI_BASE_DIR}/scripts/start.sh
