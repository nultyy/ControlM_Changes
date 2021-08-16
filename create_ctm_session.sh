endpoint=https://localhost:8443/automation-api
user=workbench
passwd=workbench

# Login
login=$(curl --insecure -H  "Content-Type: application/json" -X POST -d "{\"username\":\"$user\",\"password\":\"$passwd\"}"   "$endpoint/session/login" )
echo $login
# trim spaces and new lines
login=$(echo ${login//[$'\t\r\n ']})
token=$(echo ${login##*token\" : \"} | cut -d '"' -f 1)
echo $token
