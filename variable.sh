#!/bib/bash

Timestamp=$(date)

echo "Time is $Timestamp"

Start_time=$(date+%s)

sleep 10

End_time=$(date+%s)

Final_time=$(($End_time - $Start_time))

echo "Total script executed time is $Final_time"

