for file in `find . -type f -name "*.jpg"`
do
	if echo $file | grep -q "thumbnail"; then
		continue
	fi
    echo "<li class=\"grid-item post format-image\">
		                <div class=\"grid-item-inner\"> <a href=\"images/malebillu3/4/${file}\" data-rel=\"prettyPhoto\" class=\"media-box\"> <img src=\"images/malebillu3/4/thumbnail/${file}\" alt=\"\"> </a> </div>
		              </li>"
done