for file in `find . -type f -name "*.JPG"`
do
	thumbnail_file="./thumbnail/${file##*/}"
    if [ ! -e "${file%/*}/thumbnail" ]; then mkdir -p "${file%/*}/${thumbnail_dir}"; fi
    echo "Create thumbnail for image $file"
    `convert -thumbnail x300 $file $thumbnail_file`
done