for file in ~/.{bashrc,aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;