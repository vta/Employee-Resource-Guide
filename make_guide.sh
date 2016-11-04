#!/bin/sh


# SOURCE_DIR is the folder which contains the PDF and markdown files to be
# used in the creation of the resource guide.
SOURCE_DIR="./docs/Employee Resource Guide"
#SOURCE_DIR="./test_docs/test_folder_2"

# TARGET_DIR is the folder which will hold the resource guide once it is created
TARGET_DIR="./out/Employee Resource Guide"

# RESOURCES_DIR is the folder which contains files, like images, used in the final HTML
RESOURCES_DIR="./resources"

rm -rf "${TARGET_DIR}"

if [ "$?" -eq "0" ]; then
    python deguide.py "${SOURCE_DIR}" "${RESOURCES_DIR}" "${TARGET_DIR}"
else 
	echo Tried to delete the output folder but could not do so.
	echo Please check that the files in "${TARGET_DIR}" are not in use and try again.
fi

# fixme
# open ${TARGET_DIR}/index.html