ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8
RUN apk update && apk add --no-cache --upgrade libusb-dev librtlsdr-dev rtl-sdr build-base autoconf cmake pkgconfig git 
RUN git clone https://github.com/merbanan/rtl_433
RUN cd rtl_433 && mkdir build && cd build && cmake .. && make && make install

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
