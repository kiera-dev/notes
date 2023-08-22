# Useful regex

#Matching email addresses
email_pattern = r"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

#Matching URLs
url_pattern = r"https?://(?:www\.)?[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

#Extracting Dates
date_pattern = r"\d{2}/\d{2}/\d{4}"

#Matching phones numbers 
phone_pattern = r"\d{3}-\d{3}-\d{4}|\(\d{3}\) \d{3}-\d{4}|\d{10}"

#Extracting hashtags
hashtag_pattern = r"#\w+"

#Matching words with hyphens
hyphen_pattern = pattern = r"\w+(?:-\w+)+"

#Matching ipv4
ipv4_pattern = r"\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}"

#Matching ipv6
ipv6_pattern = r"([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}"





""" ipv6 use case commented out. 
ipv6_addresses = [
    "2001:0db8:85a3:0000:0000:8a2e:0370:7334",
    "fe80:0000:0000:0000:0202:b3ff:fe1e:8329",
    "2001:db8::ff00:42:8329",
]

for address in ipv6_addresses:
    if re.match(ipv6_pattern, address):
        print(f"{address} is a valid IPv6 address")
    else:
        print(f"{address} is not a valid IPv6 address")
"""