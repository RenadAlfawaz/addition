FROM python:alpine3.7
COPY . /app
WORKDIR /app
RUN pip install flask
RUN pip install -U flask_cors
EXPOSE 8080
CMD ["python", "app.py"]
