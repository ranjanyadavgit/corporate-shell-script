
#!/bin/bash
# List all listening ports and the associated services
netstat -tuln | grep LISTEN


#Install net-tools:
#sudo apt install net-tools
#Script
#Explanation
#• netstat -tuln: Lists all TCP and UDP listening ports.
#• grep LISTEN: Filters the output to show only listening ports.
