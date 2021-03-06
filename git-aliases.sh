if [[ $(which git > /dev/null; echo $?) == "0" ]]; then
    echo "Found git, setting up aliases"
    git config --global --replace-all alias.st 'status'
    git config --global --replace-all alias.lt 'log --graph --oneline --decorate --all'
    git config --global --replace-all alias.cb "checkout -b"
    git config --global --replace-all alias.last "log -1 HEAD"
else
    echo "git not found - skipping aliases"
fi
