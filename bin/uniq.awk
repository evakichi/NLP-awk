#!/usr/bin/awk -f
BEGIN{
        while((getline < "/dev/stdin") > 0)
        {
            str = $1"\t";
            for(i=2;i<=NF;i++)
            {
                str = str $i" ";
            }
            UNIQ[str]+=1
        }
        for( str in UNIQ )
        {
            printf "%s\n",str;
        }
}