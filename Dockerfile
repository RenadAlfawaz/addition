FROM python:alpine3.7
COPY . /app
WORKDIR /app
RUN pip install flask
RUN pip install -U flask_cors
LABEL io.k8s.display-name="app name" \
      io.k8s.description="container description..." \
      io.openshift.expose-services="8080:http"
ENV ASPNETCORE_URLS=http://*:8080
EXPOSE 8080
CMD ["python", "app.py"]
