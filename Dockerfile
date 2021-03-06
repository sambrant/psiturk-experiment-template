FROM python:3.6-stretch

LABEL maintainer="Paxton Fitzpatrick <Paxton.C.Fitzpatrick@Dartmouth.edu>" version="1.0"

ENV PSITURK_GLOBAL_CONFIG_LOCATION "/exp"

WORKDIR "/exp"

RUN pip install \
        psiturk==2.3.8 \
        pymysql==0.10.0 \
        python-Levenshtein==0.12.0 \
    && rm -rf ~/.cache/pip

CMD ["bash"]