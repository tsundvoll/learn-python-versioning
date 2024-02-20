FROM python:3.10-slim as builder

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY . .
RUN pip install .

CMD [ "python", "main.py" ]
