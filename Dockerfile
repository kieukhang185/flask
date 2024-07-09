FROM registry.suse.com/suse/sle15:15.6

# Werkzeug ItsDangerous Click Blinker

RUN zypper --gpg-auto-import-keys refresh && \
    zypper install -l -y python311==3.11.9 python311-pip==22.3.1 which==2.21 curl==8.6.0

RUN  pip3 install flask==3.0.3 gunicorn==22.0.0

RUN ln -sf /usr/bin/python3.11 /usr/bin/python3

COPY . /app

WORKDIR /app

EXPOSE 8080

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "hello:app"] #hello is name of file run app, app is