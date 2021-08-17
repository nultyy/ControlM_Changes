endpointtmp=https://workbench:8443/automation-api
user=workbench
passwd=workbench

# Login
login=$(curl --insecure -H  "Content-Type: application/json" -X POST -d "{\"username\":\"$user\",\"password\":\"$passwd\"}"   "$endpointtmp/session/login" )
echo $login
# trim spaces and new lines
login=$(echo ${login//[$'\t\r\n ']})
tokentmp=$(echo ${login##*token\" : \"} | cut -d '"' -f 1)
echo $tokentmp
export token=$tokentmp
export endpoint=$endpointtmp
env
