# mysql-curl
tasked with spending 3 hours once a week to upload data, i spent a weekend and a few late nights making this to save 3 hours a week.

This was created to use Oauth 2.0 authentication to gain access to a remote server and upload data in large batches.

Step 1 : Edit clawback.sql for the query you want to run.

Step 2 : Edit Clawback.sh with the details of your mysql database. 

Step 3 : Edit Converter.sh with a token you were provided with and make sure the files are converted successfully to JSON

Step 4 : Edit Auth.sh with the correct login details.

Step 5 : Run upload.sh and test

Step 6 : Move all files apart from upload.sh to an executable path and set a cron job for upload.sh 



TODO 

Make installer to streamline this process - This was built purely for the server I use and was intended to be an exercise more than anything,

Move login details to an encrypted file and decrypt before running Clawback.sh

Needs more comments 

