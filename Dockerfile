FROM python:alpine3.7
COPY . /app
WORKDIR /app
RUN pip install flask
EXPOSE 3001
CMD python ./app.py
