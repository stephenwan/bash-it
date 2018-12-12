function g() {
  if [ "$#" -eq 0 ] ;
  then
    echo "Use g with global python script in pyenv \"genv\""
  else
    command="$HOME/.pyenv/versions/genv/bin/${@:1}"
    echo $command
    $command
  fi
}
