# Sports Reference
 
Language used was Ruby

I first assigned the hash keys to the varaible called teams

To create the rest of the rows, I looped through all the teams. Each row started with the instance of the loop and added the win records after that. 

In order to retrieve the win records, I iterated through the teams again using a nested loop, and checked if the instance of the parent loop (team) matches the instance of the nested loop. (opponent)

If there was a match, I added a dash, to signify that a team cant play itself

If there was no match, I accessed the hash value in the dataset, corresponding to the win record against a specific opponent

After this, the matrix was saved to a csv file
