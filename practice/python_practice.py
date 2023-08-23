#extract first 3 characters from a list of IPs 

from faker import Faker

faker = Faker()
fake_ip_addresses = [faker.ipv4() for _ in range(5)]
first_part_list = []

print(fake_ip_addresses)

for ip in fake_ip_addresses:
    parts = ip.split(".")
    if len(parts) >= 1 and len(parts[0]) < 4:
        first_part = parts[0]
        print("First part:", first_part)
        first_part_list.append(first_part)
    else:
        print("Invalid IP address format")

print(first_part_list)



#get index for approved device that matches the approved users index
approved_users = ["elarson", "bmoreno", "sgilmore", "eraab", "gesparza"]
approved_devices = ["8rp2k75", "hl0s5o1", "4n482ts", "a307vir", "3rcv4w6"]
username = "sgilmore"
username_index = approved_users.index(username)
print(username_index)


#an elif statement should run when the username is part of the approved_users but the device_id doesn't match the corresponding device ID in the approved_devices. 

username = "sgilmore"
device_id = "8rp2k75"
ind = approved_users.index(username)
if username in approved_users and device_id == approved_devices[ind]:
    print("The user", username, "is approved to access the system.")
    print(device_id, "is the assigned device for", username)
elif username in approved_users and device_id != approved_devices[ind]:
    print("The user", username, "is approved to access the system, but", device_id, "is not their assigned device.")
else:
    print("pthbth")


# Define a function named `login` that takes in two parameters, `username` and `device_id`
#To complete this task, you must define a function named login that takes in two parameters, username and device_id. Afterwards, call the function and pass in different username and device ID combinations to experiment and observe the function's behavior.

def login(username,device_id): 

    if username in approved_users:
        print("The user", username, "is approved to access the system.")
        ind = approved_users.index(username)
        if device_id == approved_devices[ind]:
          print(device_id, "is the assigned device for", username)
        else:
          print(device_id, "is not their assigned device.")
    else:
        print("The username", username, "is not approved to access the system.")

# Call the function you just defined to experiment with different username and device_id combinations

login("sam","4n482ts")
login("elarson","4n482ts")
login("elarson", "8rp2k75")




