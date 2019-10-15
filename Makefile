cv:
	docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$(PWD)":/data -w /data "tianon/latex" lualatex *.tex &&  xdg-open resume_cv.pdf > /dev/null 2> /dev/null