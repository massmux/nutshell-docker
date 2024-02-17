FROM python:3.9-slim
RUN apt-get update
RUN apt-get install -y curl python3-dev autoconf g++
RUN apt-get install -y libpq-dev

RUN apt-get install -y build-essential automake pkg-config libtool libffi-dev wget

RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="/root/.local/bin:$PATH"
WORKDIR /app
RUN 	cd /app && wget https://github.com/cashubtc/nutshell/archive/refs/tags/0.15.0.tar.gz && \
	tar xzvf 0.15.0.tar.gz && \
	mv nutshell-0.15.0/* .


RUN poetry config virtualenvs.create false
RUN poetry install --only main --no-root
RUN poetry add psycopg2
