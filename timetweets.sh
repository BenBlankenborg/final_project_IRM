#!/bin/bash
#this program parses through the data in the corpus Karora
#and puts the first 20 tweets from each seperate nightly hour (23 until 7) 
#together in one file, and does the same for the daily hours, 
#for both 09-04-2019 and 12-04-2019.

for number in 23 00 01 02 03 04 05 06
do
zless /net/corpora/twitter2/Tweets/2019/04/20190409\:$number.out.gz  |\
 /net/corpora/twitter2/tools/tweet2tab text | head -20 |\
sed s/'#.* //g' >> tue_night_tweets.txt
done

for number in 11 12 13 14 15 16 17 18
do zless /net/corpora/twitter2/Tweets/2019/04/20190409\:$number.out.gz  |\
 /net/corpora/twitter2/tools/tweet2tab text | head -20 |\
sed s/'#.* //g' >> tue_day_tweets.txt
done


for number in 23 00 01 02 03 04 05 06
do
zless /net/corpora/twitter2/Tweets/2019/04/20190412\:$number.out.gz  |\
 /net/corpora/twitter2/tools/tweet2tab text | head -20 |\
sed s/'#.* //g' >> fri_night_tweets.txt
done

for number in 11 12 13 14 15 16 17 18
do zless /net/corpora/twitter2/Tweets/2019/04/20190412\:$number.out.gz  |\
 /net/corpora/twitter2/tools/tweet2tab text | head -20 |\
sed s/'#.* //g' >> fri_day_tweets.txt
done
