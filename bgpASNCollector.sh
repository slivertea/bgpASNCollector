RUNDATE=$(date +%Y%m%d_%H%M)
OUTVAR='resultsASN-'
OUTFILE=$OUTVAR$RUNDATE".csv"
echo "Clearing output file..."
`touch $OUTFILE`

while read line; do
        # manual to STDOUT:
        #curl https://api.hackertarget.com/aslookup/?q=$line
        #echo

        # output to csv
        RESULTS=$(curl https://api.hackertarget.com/aslookup/?q=$line)

        echo $RESULTS >> $OUTFILE


done < ipaddress-list.txt
