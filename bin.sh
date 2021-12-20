#!/bin/bash


echo "[>] Parsing Input File"
cat $INPUT |grep '"' |tr -d " " |tr -d "\n" |sed 's/[\"x.;(){}]//g' >> Parsed.txt
echo "[>] Pipe output to xxd"
xxd -r -p Parsed.txt Converted.bin
echo "[>] Clean up"
echo "[>] Done!!"

