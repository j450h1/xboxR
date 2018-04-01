# xboxR
This a planned R package for the unofficial xbox one API - https://xboxapi.com/

# shell script

Currently a POC, shell script works to notify you when one of your friend's is online playing a certain game (PUBG in this example)

1. The environment variables that need to be set are:
* AUTH_KEY
* GAMERTAG #Friend's gamertag - remember to escape any special characters like spaces
* XUID
* GAME 

For example: 
`export AUTH_KEY="xxxxxxxxxxxxxxxxxxxxxxxx"`

2. Remember to change the permission of the shell scripts as such:

`chmod 755 environment_variables.sh`

3. jq must be installed

https://stedolan.github.io/jq/download/
