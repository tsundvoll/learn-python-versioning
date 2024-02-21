FROM python:3.12-slim as build

WORKDIR /app

RUN python -m venv /app/venv
ENV PATH="/app/venv/bin:$PATH"

RUN apt-get update && apt-get install -y git

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
RUN --mount=source=.git,target=.git,type=bind
RUN pip install .

FROM python:3.12-slim
WORKDIR /app
COPY --from=build /app/venv /app/venv
ENV PATH="/app/venv/bin:$PATH"

COPY . .
CMD [ "python", "main.py" ]
