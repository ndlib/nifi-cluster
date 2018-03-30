FROM apache/nifi:1.5.0
EXPOSE 8080 10000 80 8443
COPY --chown=nifi:nifi start.sh ${NIFI_BASE_DIR}/scripts/
RUN chmod +x ${NIFI_BASE_DIR}/scripts/start.sh
CMD ${NIFI_BASE_DIR}/scripts/start.sh
