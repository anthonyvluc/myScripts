#!/bin/sh
#!https://www.spigotmc.org/threads/buildtools-updates-information.42865/

echo "Downloading latest build..."
wget "https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar" -O BuildTools.jar

echo "Building server..."
pushd ~/minecraft_server
java -jar BuildTools.jar
popd
