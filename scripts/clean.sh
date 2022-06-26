if test -n "$(find . -maxdepth 1 -name '*.js' -print -quit)"; then
	for u in *.js
	do
		rm "$u"
	done
fi
