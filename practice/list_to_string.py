# Define a function named `list_to_string()`
# Store the list of approved usernames in a variable named `username_list`
  # Write a for loop that iterates through the elements of `username_list` and displays each element

 username_list = ["elarson", "bmoreno", "tshah", "sgilmore", "eraab", "gesparza", "alevitsk", "wjaffrey"]

def list_to_print():
  for username in username_list:
    print(i)
list_to_print()


#Convert username_list to string 

def list_to_string():
  global username_string
  username_string = ""
  for username in username_list: 
    username_string += " " + username
  print(username_string)

list_to_string()
print(username_string)


#print alert message 3 times
def alert(): 
  for i in range(3):
    print("Potential security issue. Investigate further.")
alert()

#convert username to string in a different way 
def list_to_string_concat():
  sum_variable = ""
  for i in username_list:
    sum_variable = sum_variable + i + ", "

  print(sum_variable)
list_to_string_concat()

