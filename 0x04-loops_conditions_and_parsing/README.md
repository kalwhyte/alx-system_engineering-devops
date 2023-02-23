# Shell Loops, Conditions,
![](https://phoenixnap.com/kb/wp-content/uploads/2021/12/individual.sh-for-loop-script.png)

## Learning objectives

- How to create SSH keys
- What is the advantage of using `#!/usr/bin/env` bash over `#!/bin/bash`
- How to use `while`, `until` and `for` loops
- How to use `if`, `else`, `elif` and case condition statements
- How to use the `cut` command
- What are files and other comparison operators, and how to use them

## Requirements

- Allowed editors: `vi`, `vim`, `emacs`
- All your files will be interpreted on `Ubuntu 20.04 LTS`
- All your files should end with a new line
- A README.md file, at the root of the folder of the project, is mandatory
- All your Bash script files must be executable
- You are not allowed to use `awk`
- Your Bash script must pass `Shellcheck` (version 0.7.0) without any error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what the script doing

## Concepts

- `env`
- `cut`
- `for`
- `while`
- `until`
- `if`

## Solution:

## 0.

- Use the command 'ssh-keygen -t rsa -b 4096 -C "superkalel55@gmail.com"'

## 1

- 'In this script, we use a for loop to iterate over the values of the variable i from 1 to 10, and for each value of i, we use the echo command to print "Best School" to the terminal.'

## 2.
 - 'In this script, we use a while loop to repeat the action of printing "Best School" to the terminal until the count variable is equal to 10. We initialize count to 0 before the loop, and then on each iteration of the loop, we use the echo command to print "Best School" to the terminal, and increment count by 1 using the ((count+1)) syntax.'

## 3.

- Explanation:

**The first line specifies the interpreter to use (Bash).
**The second line is a comment explaining what the script does.
**The count variable is initialized to 0.
**The until loop will execute the code inside the loop until the condition in square brackets is true (i.e., $count is greater than or equal to 10).
**Inside the loop, the script echoes "Best School" and increments the count variable by 1.
**Once the count variable is greater than or equal to 10, the loop terminates and the script ends.

## 4.

- 'In this script, we use a while loop to repeat the "Best School" message 10 times. We keep track of the iteration count in the count variable. When the count is 8 (i.e., the 9th iteration), we use an if statement to print "Best School" and "Hi" on separate lines. Otherwise, we just print "Best School".'

## 5.

- 'When you start a loop with a while statement, you need to initialize the variable that you will use to control the loop before the loop starts. This variable is usually called a "counter" variable and it keeps track of the number of times the loop has executed.

In this case, the initial value of the count variable is 0. Without this initialization, the loop would never execute because the condition while [ $count -le 10 ] would be false from the start.

In the loop, the if statement checks if count is equal to 4 or 8. If it is, the corresponding message is printed. If it is not, the message "Best School" is printed. Finally, at the end of each iteration, the count variable is incremented by 1 with the command count=$((count+1)). This ensures that the loop will eventually terminate after 10 iterations.'

## 6.

- 'Explanation:

**We start by initializing the count variable to 1.
**We use a while loop to iterate from 1 to 20.
**For each iteration, we use a case statement to check if the value of count matches any of the cases.
*If count is 4, we print "4" on one line and "Bad luck from China" on the next line.
**If count is 9, we print "9" on one line and "Bad luck from Japan" on the next line.
**If count is 17, we print "17" on one line and "Bad luck from Italy" on the next line.
**For all other cases, we simply print the value of count.
**Finally, we increment the value of count by 1 at the end of each iteration.

## 7.

- 'This script initializes a variable hour to 0 and loops while hour is less than 12. Within the outer loop, a variable minute is initialized to 1 and loops while minute is less than 60. Within the inner loop, the script echoes the time as a string in the format hour:minute. The minute variable is incremented by 1 in each iteration of the inner loop. Finally, the hour variable is incremented by 1 in each iteration of the outer loop, and the inner loop runs again for the next hour. When the outer loop finishes, the script echoes "12:00" to display the last minute of the day.'

## 8.

- 'This Bash script reads the contents of the current directory and extracts the part of the name after the first dash using the cut command.

The script first lists the contents of the current directory using the ls command and stores it in the list variable. Then it loops through each item in the list and prints out the second field (i.e., the part of the name after the first dash) using the cut command with -d option to specify the delimiter as "-" and -f option to specify the field to extract.

Note that this script only works correctly if every item in the current directory has a dash in its name. If an item does not have a dash in its name, this script will not produce the desired output.

Also, this script does not filter out hidden files, which means that it will include files that start with a dot (e.g., .gitignore) in the output. If you want to exclude hidden files, you can modify the ls command to use the -p option to add a slash to the end of directory names, and then use grep to filter out items that end with a slash (i.e., directories).'

## 9.

- 'This is a correct Bash script that checks if a file named "school" exists and prints information about it if it does exist. If the file does not exist, it prints a message saying so.

The script first checks if the file exists using the -e option with the file name. If the file exists, it prints "school file exists" and proceeds to check if the file is empty or not using the -s option with the file name. If the file is empty, it prints "school file is empty", otherwise it prints "school file is not empty".

Next, the script checks if the file is a regular file using the -f option with the file name. If the file is a regular file, it prints "school is a regular file".

Finally, if the file does not exist, the script prints "school file does not exist".'

## 10.

- 'This Bash script displays numbers from 1 to 100, and for multiples of 3, it displays "Fizz", for multiples of 5 it displays "Buzz", and for multiples of both 3 and 5, it displays "FizzBuzz". Here is the breakdown of the code:

for num in {1..100}

This is a for loop that loops through numbers 1 to 100, and stores each number in the variable num.

if (( num % 3 == 0 && num % 5 == 0 ))

This is an if statement that checks if the current number is a multiple of both 3 and 5.

echo "FizzBuzz"

If the current number is a multiple of both 3 and 5, this statement prints "FizzBuzz" to the console.

elif (( num % 3 == 0 ))'

## 100.

- 'Yes, that looks like a valid Bash script to display the username, user ID, and home directory path for each user in the /etc/passwd file.

Here's an explanation of the script:

while read -r passwd; do: this starts a loop that reads each line of the /etc/passwd file into the passwd variable, one line at a time.
echo "$passwd" | cut -d ':' -f1,3,6: this takes the value of passwd (which is a line from the /etc/passwd file), uses the cut command to split the line into fields based on the : delimiter, and then selects the first, third, and sixth fields (which correspond to the username, user ID, and home directory path, respectively). The resulting output is then printed to the console.
done < "/etc/passwd": this ends the loop and specifies that the input for the loop should come from the /etc/passwd file.
Overall, this is an efficient way to extract specific information from the /etc/passwd file using a Bash script.'

## 101.

- 'The script above reads the file /etc/passwd line by line and splits each line by the : delimiter. The values are then assigned to the corresponding variables, which are used to display information about the user in a formatted string.

The output for each line looks like this:

The user <username> is part of the <gid> gang, lives in <home> and rides <shell>. <uid>'s place is protected by the passcode <password>, more info about the user here: <info>

where <username>, <gid>, <home>, <shell>, <uid>, <password>, and <info> are replaced with the actual values from the /etc/passwd file.'

## 102.

- 'This awk command will extract the first field (visitor IP) and the ninth field (HTTP status code) from the Apache access log file and display them in a space-separated format.

awk '{print $1 " " $9}' apache-access.log

Note that this assumes that the Apache access log file is named apache-access.log and is located in the current directory.'

## 103. [103-dig_the-data]

- 'This command parses the apache-access.log file and prints the count of requests made by each unique IP address along with the HTTP status code:

awk '{ print $1 " " $9}' apache-access.log | sort | uniq -c | sort -rn

Here's a breakdown of what each component does:

awk '{ print $1 " " $9}' apache-access.log: This uses awk to extract the first and ninth fields from each line of apache-access.log. In Apache log files, the first field is the IP address of the visitor, and the ninth field is the HTTP status code.
sort: This sorts the output of the previous step so that identical lines are adjacent to each other.
uniq -c: This collapses adjacent identical lines and outputs a count of how many times each line occurred.
sort -rn: This sorts the output by the count in reverse numerical order (i.e., from most to least frequent).'
