# Sets bash_prompt terminal styles
if [ -f ~/.bash_prompt ]; then
source ~/.bash_prompt
fi

# Proxy functions
function proxyon(){
  ## Prompts in terminal
  echo -n "Enter your ZID:"
  read -es username
  echo -n "Please enter password:"
  read -es password
  export http_proxy="http://$username:$password@10.43.196.134:8080/"
  export https_proxy=$http_proxy
  export HTTP_PROXY=$http_proxy
  export HTTPS_PROXY=$http_proxy
  export ftp_proxy=$http_proxy
  export rsync_proxy=$http_proxy
  export no_proxy="*.local, 169.254/16, 168.162.*, localhost, 127.0.0.1, 10.*"
  echo -e "\nProxy environment enabled."
}
function proxyoff(){
  echo "Disabling proxy for user 'cole.gentry'..."
  unset HTTP_PROXY
  unset http_proxy
  unset HTTPS_PROXY
  unset https_proxy
  unset FTP_PROXY
  unset ftp_proxy
  unset RSYNC_PROXY
  unset rsync_proxy
  echo -e "\nProxy environment disabled."
}
