FROM python:alpine3.7
COPY . /app
WORKDIR /app
RUN pip install -r flask
EXPOSE 3001
CMD python ./app.py
