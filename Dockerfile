FROM isatools/isatools:3.6-alpine-0.9.4

LABEL maintainer="PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )"
LABEL Description="Convert ISA JSON format file to ISA tab"
LABEL software.version="0.9.4"
LABEL version="0.5"
LABEL software="json2isatab"


ADD run_test.sh /usr/local/bin/run_test.sh
RUN chmod +x /usr/local/bin/run_test.sh

ADD run_json2tab.py /usr/local/bin/run_json2tab.py
RUN chmod a+x /usr/local/bin/run_json2tab.py

ENTRYPOINT ["run_json2tab.py"]
