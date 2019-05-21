if [[ $# != 1 ]]
then
  echo "Usage: ./login <firstname.secondname>"
  exit 1
fi
echo "Logging in as $1@zuhlke.com"
cf login -a https://api.run.pivotal.io -u $1@zuhlke.com -o aimless-hammer -s development
