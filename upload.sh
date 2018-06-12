#!/bin/sh

#Query database and output the result to csv
querydb.sh | sed 's/\t/","/g;s/^/"/;s/$/"/' > output.csv;

# convert the csv to json
converter.sh > output.json;

#curl the json file to dialer and send result to final result.txt

auth.sh;

# Remove old csv files

rm -f output.csv output.json;

# email result to Nathan and Simon to find

echo "Attached are the results from the weeks policy uploads and where to find them" | mail -s "This weeks Lapse Clawback" -a "finalresult.txt" it.development@clearcovercompare.co.uk

#echo "Attached are the results from the weeks policy uploads and where to find them" | mail -s "This weeks Lapse Clawback" -a "finalresult.txt" Jenni.Turner@clearcovercopmare.co.uk

# Remove result from curl

rm -f finalresult.txt


