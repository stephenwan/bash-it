function git-web() {
  origin_ssh_url=$(git config --get remote.origin.url)
  host=$(echo $origin_ssh_url | sed -E 's/^(https:\/\/|git@)([^\/]+)(.+)$/\2/')
  repo=$(echo $origin_ssh_url | sed -E 's/^(https:\/\/|git@)([^\/]+)(.+)$/\3/')
  address="https://${host/://}${repo/.git/}"
  echo "going to $address"
  chrome $address
}
