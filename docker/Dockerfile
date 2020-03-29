FROM oracle/graalvm-ce:19.0.0 as graalvm

LABEL maintainer="Rajesh Iyer <iyerajesh@gmail.com>"

# Stage 1: Build the native image
COPY /build/libs/*.jar /home/app/
WORKDIR /home/app
RUN gu install native-image
RUN native-image --no-server -cp micronaut-graalvm-poc-*.jar

FROM frolvlad/alpine-glibc
EXPOSE 8080
COPY --from=graalvm /home/app/micronaut-graalvm-poc .
ENTRYPOINT ["./micronaut-graalvm-poc"]