FROM gcc-cmake-ninja

ARG release=master 
WORKDIR /app

COPY ./build.sh .

ENTRYPOINT [ "/app/build.sh" ]

# mkdir export
# # to build latest version
# docker run --mount type=bind,src="%cd%\export",target=/export protobuf
#
# # to build a specific version
# docker run --mount type=bind,src="%cd%\export",target=/export protobuf 22
#
# produces:
#   export\protobuf.tar.gz
#   export\protobuf-22.tar.gz
