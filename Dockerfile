FROM google/dart

WORKDIR /app
COPY pubspec.* /app/
RUN pub get --no-precompile
COPY . /app/
RUN pub get --offline --no-precompile

CMD []

ENTRYPOINT ["/usr/bin/dart", "bin/server.dart"]