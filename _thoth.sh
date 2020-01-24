# TODO: figure out absolute path to thoth.sh
function _thoth {
	local cur prev opts
	COMPREPLY=( )
	cur="${COMP_WORDS[COMP_CWORD]}"
	prev="${COMP_WORDS[COMP_CWORD-1]}"
	opts="${... list | tr '\n' ' ')"
	COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
}
complete -F _thoth thoth