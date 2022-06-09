#!/usr/bin/awk -f
{
	str = "" ; for ( i=2 ; i <= NF ; i++ ) str = str" "$i
	MOR[str]+=$1
}
END {
	for ( str in MOR ) N += MOR[str]
	for ( str in MOR ) printf "%10.9f %s\n", MOR[str]/N,str
}
