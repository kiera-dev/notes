#This algorithm demonstrates how to open a file, read its contents, perform updates, and save the changes back to the file.

# Step 1: Open the file that contains the allow list
file_name = "allow_list.txt"
with open(file_name, "r") as file:
    file_content = file.read()

# Step 2: Read the file contents

# Step 3: Convert the string into a list
ip_list = file_content.split("\n")

# Step 4: Iterate through the remove list
remove_list = ["192.168.1.2", "10.0.0.1"]

# Step 5: Remove IP addresses that are on the remove list
revised_ip_list = []
for ip in ip_list:
    if ip not in remove_list:
        revised_ip_list.append(ip)
        
# Step 6: Update the file with the revised list of IP addresses
with open(file_name, "w") as file:
    for ip in revised_ip_list:
        file.write(ip + "\n")

# Summary
print("File updates completed.")