Input :  
abba
Output :  
Valid

Input :  
a
Output :  
Valid

Input :  
abc
Output :  
Invalid
Solution: 
The input can be divide into 2 cases: 
 

Single character string: All single character strings satisfies the condition that they start and end with the same character. The regex for a string with only 1 character will be- 
 
'^[a-z]$'
Multiple character string: Here we need to check whether the first and the last character is same or not. We do this using \1. The regex will be- 
 
'^([a-z]).*\1$'
The two regular expressions can be combined using | 
 

'^[a-z]$|^([a-z]).*\1$'
In this program, we will use search() method of re module.
Below is the implementation.
 



# Python program to check if a string starts
# and ends with the same character
 
# import re module as it provides
# support for regular expressions
import re
 
# the regular  expression
regex = r'^[a-z]$|^([a-z]).*\1$'
 
# function for checking the string
def check(string):
 
    # pass the regular expression
    # and the string in the search() method
    if(re.search(regex, string)): 
        print("Valid") 
    else: 
        print("Invalid") 
 
if __name__ == '__main__' :
 
    sample1 = "abba"
    sample2 = "a"
    sample3 = "abcd"
 
    check(sample1)
    check(sample2)
    check(sample3)
