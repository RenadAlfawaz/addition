FROM python:alpine3.7
COPY . /app
WORKDIR /app
LABEL io.k8s.display-name="app name" \
      io.k8s.description="container description..." \
      io.openshift.expose-services="8080:http"
ENV ASPNETCORE_URLS=http://*:8080
RUN pip install flask
RUN pip install -U flask_cors
EXPOSE 8080
CMD ["python", "app.py"]
