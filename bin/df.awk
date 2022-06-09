#!/usr/bin/awk -f
BEGIN {
    while ((getline < "/dev/stdin") > 0) {str =""; for ( i=1 ; i <= NF ; i++ ) str = str" "$i;WORDS[str]=0;}
	for ( arg in ARGV ){ while ( ( getline < ARGV[arg] )>0){str = ""; for ( i=1 ; i <= NF ; i++ ) str = str" "$i; if (str in WORDS){WORDS[str]+=1;}}}
	for ( word in WORDS) printf "%d %s\n",WORDS[word],word
}
