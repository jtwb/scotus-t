FROM python:2-onbuild

VOLUME /var/dataset

CMD [ "python", "./__main__.py" ]
