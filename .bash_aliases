alias vpnc='sudo /usr/sbin/vpnc --natt-mode force-natt'
alias vpnd='sudo /usr/sbin/vpnc-disconnect'
alias pyclean="find . -type f -name \"*.p[yt]?\" -exec rm -f {} \; 2>/dev/null"
alias ls="ls -FG"
alias newpass="dd if=/dev/urandom count=1 bs=1000 2>/dev/null | uuencode -m - | head -n 5 | tail -n 1 | cut -c-8"
alias nft='ssh -t nft "screen -DR"'
alias nast='ssh -t ej@marzipan "screen -Dr"'
