# indentpy
Python script to change indentations of files.

## Dependencies
This package requires the following programs to be installed:
 1. [Python](https://www.python.org/)

## Installation
The installation can be done by cloning this Github repository and running the `./install.sh` script.

Cloning the Github repository:
```
git clone https://github.com/Thijsvanede/indentpy.git
```

Installing the script:
```
chmod +x ./install.sh
./install.sh
```

You can also install directly from `pip`, however, this does not come with the additional command-line tools, only the python implementation.
```
pip3 install indentpy
```

## Usage
The python script can be used in several ways:
 1. As a command line program after installation.
 2. As a command line program from source.
 3. As a python library.
  
For all use cases we give a usage example.

### Inputting special characters
When you wish to specify special characters like `\t` or `\n`, these can be put into a `bash` terminal by the combination `ctrl+v` followed by the key for that character. Examples:
 * `\t`: `ctrl+v` followed by `tab`
 * `\n`: `ctrl+v` followed by `enter`
 * `\r\n`: `ctrl+v` followed by `crtl+r` followed by `ctrl+v` followed by `enter`

### Command-line (Installed)
The usage of indent is explained in the help file below.
```
Usage: indent [-h] [-w WRITE] [-o ORIG] [-t TO] [-d DELIM] file [file ...]

Change indentation of file(s).

positional arguments:
    file    File(s) for which to change indentation.

optional arguments:
    -h    Show this help text.
    -d    Line delimiter in original file    (optional, default='\n').
    -o    Indentation style in original file (optional, default='\t').
    -t    Indentation style in desired  file (optional, default='    ').
    -w    File to write output to (optional, default writes to inputfile).
```

#### Example
The following example takes `infile.py`, transforms the original `\t` indentation to 4 spaces and finally writes it to `outfile.py`.
```
indent -w outfile.py -o '	' -t '    ', infile.py
```

### Command-line (From source)
To run the program from source, you can use both `Python 2` and `Python 3`. The usage of `indent/indent.py` is explained in the help file below.
```
usage: indent.py [-h] [-w WRITE] [-o ORIG] [-t TO] [-d DELIM] file [file ...]

Indentation change tool.

positional arguments:
  file                      File(s) for which to change indentation.

optional arguments:
  -h, --help                show this help message and exit
  -w WRITE, --write WRITE   File to write output to (optional, if none is given,
                            change contents of file.
  -o ORIG, --orig ORIG      Indentation style in original file (optional, if none
                            is given, use '\t').
  -t TO, --to TO            Indentation style in desired file (optional, if none
                            is given, use 4 spaces).
  -d DELIM, --delim DELIM   Line delimiter in original file (optional, if none is
                            given, use '\n')
```

#### Example
The following example takes `infile.py`, transforms the original `\t` indentation to 4 spaces and finally writes it to `outfile.py`.
```
python indent/indent.py -w outfile.py -o '	' -t '    ', infile.py
```

### Python
You can import the module as follows
```
from indentpy import indent
```

Next you can use the IndentChanger object to manipulate indentation of text and files.
```
# Import indent module
from indentpy import indent

# Create indentation changer
ic = indent.IndentChanger()
# Change regular text
ic.change(<text>, original=<original_indentation>, desired=<desired_indentation>)
# Change file
ic.change(<file>, outfile=<outfile>, original=<original_indentation>, desired=<desired_indentation>)
```
See the pydoc for more information on how to use the python module.
