SECRETS="secrets.ejson"

# MYSQL_ROOT_PASSWORD is used by the official MySQL image
# This is needed to start the database.
secret=`ejson decrypt $SECRETS |jq '.mysql_root_password'`
secret=`echo $secret|sed 's/"//g'`
export MYSQL_ROOT_PASSWORD=$secret

# MYSQL_PASSWORD is used by the MySQL container to initialize the database.
# It is passed on to php/booked/config/config.php.
secret=`ejson decrypt $SECRETS |jq '.mysql_password_booked'`
secret=`echo $secret|sed 's/"//g'`
export MYSQL_PASSWORD=$secret
