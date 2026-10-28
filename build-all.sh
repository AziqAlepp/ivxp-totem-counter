#!/usr/bin/env bash
# Builds IVXP Totem Counter for 1.21.4 and 1.21.11. Needs JDK 21 + internet.
set -e
mkdir -p dist
for v in 1_21_4 1_21_11; do
  cp gradle.properties.$v gradle.properties
  (command -v gradle >/dev/null && gradle clean build || ./gradlew clean build)
  cp build/libs/ivxp-totemcounter-*.jar dist/ 2>/dev/null || true
  rm -f dist/*-sources.jar
done
echo "Done -> dist/"
