FROM apache/nifi:1.6.0
EXPOSE 8080 10000 80 8443
COPY --chown=nifi:nifi start.sh ${NIFI_BASE_DIR}/scripts/
COPY --chown=nifi:nifi common.sh ${NIFI_BASE_DIR}/scripts/
RUN chmod +x ${NIFI_BASE_DIR}/scripts/start.sh
RUN chmod +x ${NIFI_BASE_DIR}/scripts/common.sh
ENV TZ=America/Indiana/Indianapolis
CMD ${NIFI_BASE_DIR}/scripts/start.sh
