FROM hamzalazigheb/nuit

LABEL maintainer="hamza lazigheb ( hamzalazigheb@gmail.com ) "

RUN apt-get update
RUN git clone https://github.com/hamzalazigheb/nuit

WORKDIR /root/notebooks/finadict

RUN pip3 install -r requirements.txt

ENV STREAMLIT_SERVER_PORT 80

EXPOSE 80

STOPSIGNAL SIGTERM

ENTRYPOINT ["streamlit", "run"]

CMD ["app.py"]
