FROM apache/nifi:1.6.0
EXPOSE 9090 8080 10000
COPY --chown=nifi:nifi start.sh ${NIFI_BASE_DIR}/scripts/
COPY --chown=nifi:nifi common.sh ${NIFI_BASE_DIR}/scripts/
RUN chmod +x ${NIFI_BASE_DIR}/scripts/start.sh
RUN chmod +x ${NIFI_BASE_DIR}/scripts/common.sh
ENV TZ=America/Indiana/Indianapolis
RUN ln -snf /opt/nifi/1.6.0/logs /opt/nifi/logs
CMD ${NIFI_BASE_DIR}/scripts/start.sh
