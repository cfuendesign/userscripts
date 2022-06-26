for d in *
do
	if test -d "$d" && test "$d" != "scripts" ; then
		echo "$d"
		(cd "$d" && cp *.js ../)
	fi
done
