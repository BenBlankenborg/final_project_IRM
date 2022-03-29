# final_project_IRM
the code used for my final project for introduction to research methods

## Seperating tweets from night and day

### This github

This github contains a shell script and this README file. The shell script will, when used in the corpus Karora, put the first 20 tweets from each seperate nightly hour (23 until 7) together in one file, and do the same for the daily hours, for both 09-04-2019 and 12-04-2019. The output was retrieved with the 5.10.16.3-microsoft-standard-WSL2 linux bash shell.

### Code

The code should be run in the bash shell. The shell script will, when used in the corpus Karora, put the first 20 tweets from each seperate nightly hour (23 until 7) together in one file, and do the same for the daily hours, for both 09-04-2019 and 12-04-2019. For each of the files the code loops through every hour, and for each hour it appends (>>) the first twenty tweets to the file.

### Data

The data used is Karora, from the University of Groningen, on 29-03-2022. 
