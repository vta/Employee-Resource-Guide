# Employee Resource Guide Generator


## Input
The `./docs/Employee Resource Guide` folder is used as the input for the program. The PDF files should be nested based on hierarchy. The folder structure dictates the final appearance in the generated output. If any of the subfolders contains an `index.md` file, the contents of that file will be read, converted to HTML, and placed at the top of the section in the generated HTML file.

## Output
Output will be placed the `./out/Employee Resource Guide` folder. The final HTML file is generated based on `template.html`. The final output will be at `./out/Employee Resource Guide/Employee Resource Guide.html`. Open this in any modern web browser to see the result.

## Resources
All the contents of the `./resources` will be copied to the output folder. These resources are used by the final HTML file. Please note that because the contents of the input folder (`./docs/Employee Resource Guide`) are also copied to the output, it is not valid to have a folder at `./docs/Employee Resource Guide/resources`.

## Running the Program
Python 2.7 is required to build the Employee Resource Guide.
1. Place the files to be used for the guide inside the `./docs/Employee Resource Guide` folder.
2. Place the appropriate files as described above, and the execute either `make_guide.bat` (for Windows), or `make_guide.sh` (OS X, Linux).