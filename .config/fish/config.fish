#!/usr/bin/fish

function fish_greeting
end

set -g fish_prompt_pwd_dir_length 3

set PATH $PATH /home/jonathan/.local/bin

function fish_prompt
  set_color green
  printf "%s" "$USER"
  set_color normal
  printf "@"
  set_color blue
  printf "%s" "$hostname "
  set_color magenta
  prompt_pwd &
  set_color normal
  printf "↪ "
end

if status --is-interactive
  abbr -a -g -- app appetize
  abbr -a -g -- discord 'appetize https://discord.com/app &'
  abbr -a -g -- ga 'git add'
  abbr -a -g -- gc 'git commit -m'
  abbr -a -g -- gp 'git push'
  abbr -a -g -- gs 'git status'
  abbr -a -g -- mandoc 'man pandoc'
  abbr -a -g -- rmail 'appetize https://mail.google.com/mail/u/1/#inboxi &'
  abbr -a -g -- slack 'appetize https://app.slack.com/client/T01CKJLT1FY/C01CYFFEDEY &'
  abbr -a -g -- thesis 'cd /home/jonathan/Documents/Thesis'
  abbr -a -g -- up 'sudo apt update && apt list --upgradable'
  abbr -a -g -- upg 'sudo apt upgrade'
  abbr -a -g -- zulip 'appetize https://ucrmath.zulipchat.com &'
  abbr -a -g -- editthesis vim -c "lefta 40split ch1.tex|40vsplit ch2.tex" thesis.tex
end

