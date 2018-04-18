ARG NIFI_VERSION
FROM apache/nifi:${NIFI_VERSION}
EXPOSE 9090 8080 10000
COPY --chown=nifi:nifi start.sh ${NIFI_BASE_DIR}/scripts/
COPY --chown=nifi:nifi common.sh ${NIFI_BASE_DIR}/scripts/
RUN chmod +x ${NIFI_BASE_DIR}/scripts/start.sh
RUN chmod +x ${NIFI_BASE_DIR}/scripts/common.sh
ENV TZ=America/Indiana/Indianapolis
RUN ln -snf /opt/nifi/${NIFI_VERSION}/logs /opt/nifi/logs
CMD ${NIFI_BASE_DIR}/scripts/start.sh
