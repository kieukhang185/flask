FROM registry.suse.com/suse/sle15:15.6@sha256:0b0aa0d0fd58bc617120898436ff0661fac936158f52a444afef6a25a07fc4d9

RUN zypper --gpg-auto-import-keys refresh && \
    zypper install -l -y python311==3.11.9 python311-pip==22.3.1 which==2.21 curl==8.6.0

RUN  pip3 install flask==3.0.3 gunicorn==22.0.0 Werkzeug==3.0.3 Jinja2==3.1.4 \
     itsdangerous==2.2.0 click==8.1.7 blinker==1.8.2 packaging==24.1 MarkupSafe==2.1.5

RUN ln -sf /usr/bin/python3.11 /usr/bin/python3

COPY . /app

WORKDIR /app

EXPOSE 8080

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "hello:app"] #hello is name of file run app, app is