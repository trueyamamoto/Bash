replace "foo" with newline, and separate by ", extract foo (often used if extracting only lines that contain a certain keyword)
awk 'gsub("\"foo\"","\n")' sample.txt | awk -F "\"" '{print $2}' | awk /foo/

Extract from line 25 onward
awk 'NR>=25' sample.txt

Extract lines 25 to 50
awk 'NR==25,NR==50' sample.txt

Extract rows in multiples of 10
awk 'NR%10==0' sample.txt

Extracts lines with strings containing multiples of 10, such as :10: and :20: (time)
awk '/:.0:/' sample.txt

Extract the 2nd, 4th, 5th and 10th column from the data (such as csv) including the delimiter ,
Append , between the extracted data
awk -F "," '{print $2","$4","$5","$10"}' sample.txt

Separate by tabs
awk -F "\t" '{print $1 $2 $3}' sample.txt

Separate by tabs, and display only the last field
awk -F "\t" '{print $NF}' sample.txt

Use a < or> as a delimiter (e.g. HTML tags)
awk -F '[("<"">")]' '{print $2}' sample.txt

Further separating a separated string (separated by < or> and then separated by the string foo)
awk -F '[("<"">")]' '{split($2, arr, "foo"); print arr[1]}' sample.txt

Remove the word + (replace + with nothing)
awk 'gsub("\+", "")' sample.txt

Add <br> to the end of each line
awk 'gsub("$","<br>")' sample.txt

Replace newlines with ,
awk -v ORS=',' '{print}' sample.txt

Show only the last line of the file
awk 'END{print}' sample.txt

Exclude blank lines
awk '$0 != ""{print $0}' sample.txt

