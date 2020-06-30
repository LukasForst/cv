build-cv:
	docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$(PWD)":/data -w /data "tianon/latex" lualatex *.tex

cv: build-cv
	open resume_cv.pdf > /dev/null 2> /dev/null

commit: build-cv
	git add .
	git commit -m "${M}"
	git push