FROM golang:1.17.3

WORKDIR /srv/app
COPY ./gowebapp .

CMD ["./gowebapp"]