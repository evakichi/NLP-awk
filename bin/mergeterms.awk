#! /usr/bin/awk -f
BEGIN{
    #print "ARGC="ARGC" 1="ARGV[1]" 2="ARGV[2]" 3="ARGV[3] > "/dev/stderr"
    while ( ( getline < ARGV[1] ) > 0 ){ str = ""; for ( i = 2 ; i <= NF ; i++ ){ str = str $i" ";} DIC[str]+=$1}
    if (ARGC == 3){while ( ( getline < ARGV[2] ) > 0 ){ str = ""; for ( i = 2 ; i <= NF ; i++ ){ str = str $i" ";} DIC[str]+=$1};}
    for ( str in DIC ) printf "%d %s\n",DIC[str],str;
}