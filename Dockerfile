FROM registry.suse.com/suse/sle15:15.6@sha256:0b0aa0d0fd58bc617120898436ff0661fac936158f52a444afef6a25a07fc4d9

RUN zypper --gpg-auto-import-keys refresh && \
    zypper install -l -y python311==3.11.9 python311-pip==22.3.1 which==2.21 curl==8.6.0

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN pip3 install -r requirements.txt

RUN ln -sf /usr/bin/python3.11 /usr/bin/python3

EXPOSE 8080

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"] #hello is name of file run app, app is