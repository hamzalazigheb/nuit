FROM python:3.13.0a6-slim

WORKDIR /appcccccc

ADD . /appccccc

RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8080
fdfdfdf
# execute the Flask app
ENTRYPOINT ["python"]cc
HEALTHCHECK CMD curl --faicccccl http:/ccccc/localhost:8080/ || exit 1
CMD ["/app/app.pfdfdfdfdy"]ccccccc
