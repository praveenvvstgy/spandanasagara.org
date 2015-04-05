for file in `find . -type f -name "*.JPG"`
do
	if echo $file | grep -q "thumbnail"; then
		continue
	fi
    echo "<li class=\"grid-item post format-image\">
		                <div class=\"grid-item-inner\"> <a href=\"images/makkalakayvakammata/${file}\" data-rel=\"prettyPhoto\" class=\"media-box\"> <img src=\"images/makkalakayvakammata/thumbnail/${file}\" alt=\"\"> </a> </div>
		              </li>"
done