FROM gcc-cmake-ninja

ARG release=master 
WORKDIR /app

COPY ./build.sh .

ENTRYPOINT [ "/app/build.sh" ]

# mkdir export
# # to build latest version
# docker run --mount type=bind,src="%cd%\export",target=/export googletest
#
# # to build a specific version
# docker run --mount type=bind,src="%cd%\export",target=/export googletest 1.13
#
# produces:
#   googletest.tar.gz
#   googletest-1.13.tar.gz
