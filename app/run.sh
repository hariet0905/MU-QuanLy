#!/bin/sh
set -eu
cd "$(dirname "$0")"
mkdir -p build
javac --release 17 -encoding UTF-8 --class-path 'lib/*' --source-path src/main/java -d build src/main/java/FootballWeb.java
exec java -Dfile.encoding=UTF-8 --class-path 'build:lib/*' FootballWeb ../db/05_reports.sql web
