#! /usr/bin/awk -f
BEGIN{
    while ( ( getline < "/dev/stdin" ) > 0 ){ str = ""; for ( i = 2 ; i <= NF ; i++ ){ str = str $i" ";} DIC[str]+=$1}
    for ( str in DIC ) printf "%d %s\n",DIC[str],str;
}