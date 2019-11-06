FROM python:alpine3.7
COPY . /app
WORKDIR /app
RUN pip install flask
RUN pip install flask_cors
EXPOSE 3001
CMD python ./app.py
