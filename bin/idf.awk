#!/usr/bin/awk -f
BEGIN {
	for ( arg in ARGV ){print arg " " ARGV[arg]}
	for ( arg in ARGV ){ if (arg==1){ while (( getline < ARGV[arg] )>0) WORDS[$0]=0;}  else { while ( ( getline < ARGV[arg] )>0){if ($0 in WORDS){WORDS[$0]+=1;}}}}
	for ( word in WORDS) printf "%d %s\n",WORDS[word],word
}
