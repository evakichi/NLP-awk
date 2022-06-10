#!/usr/bin/awk -f
BEGIN {
    while ((getline < ARGV[1]) > 0) { term =""; for( i=2 ; i <= NF ; i++) {term=term" "$i};TF[term]=$1;}
	N=ARGV[2];
    while ((getline < ARGV[3]) > 0) { term =""; for( i=2 ; i <= NF ; i++) {term=term" "$i};DF[term]=$1;}
	for ( term in TF ) TFIDF[term]=TF[term]*(log((N+1)/(DF[term]+1))+1);
	for ( term in TFIDF ) printf "%10.9f %10.9f %d %d %s\n",TFIDF[term],TF[term],N,DF[term],term;
}
