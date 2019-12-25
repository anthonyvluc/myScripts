#!/bin/sh

echo "Getting the latest filter..."
git clone https://github.com/NeverSinkDev/NeverSink-Filter.git --depth 1

echo "Copying to Documents..."
cp -f NeverSink-Filter/*.filter ~/Documents/My\ Games/Path\ of\ Exile/

echo "Removing git folder..."
rm -rf ./NeverSink-Filter

echo "Filter update complete!"
