# load colors
autoload colors && colors
for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
    # todo wrap colours between %{ %} to avoid weird gaps in autocomplete
    eval COLOR_$COLOR='$fg_no_bold[${(L)COLOR}]'
    eval COLOR_$COLOR_BOLD='$fg_bold[${(L)COLOR}]'
done
eval COLOR_RESET='$reset_color'

# add some helpers for display
export CHAR_OK=✔
export CHAR_ERROR=✗
export CHAR_BOOM=💥
export CHAR_STARTER=❯
function echo_info () { echo "${COLOR_BLUE}i${COLOR_RESET} $1" }
function echo_user () { echo "${COLOR_YELLOW}?${COLOR_RESET} $1" }
function echo_success () { echo "${COLOR_GREEN}${CHAR_OK}${COLOR_RESET} $1" }
function echo_fail () { echo "${COLOR_RED}${CHAR_ERROR}${COLOR_RESET} $1|n"; exit }
function echo_title () { echo "${COLOR_CYAN}${CHAR_STARTER} $@${COLOR_RESET}" }
function echo_title_install () { echo_title "Installing" $1 "..." }
function echo_title_update () { echo_title "Updating" $1 "..." }
function echo_title_installupdate () { echo_title "Installing/Updating" $1 "..." }