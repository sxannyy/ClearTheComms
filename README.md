# ClearTheComms
This script will help you to clear all useless comments in your configuration files.

# Description
This BashScript creates a copy of a file where all lines starting with the # sign (comment) are removed. However if there is a comment in a line (but not at the beginning) it remains as it is, the comment won't be deleted.

The BashScript will ask for the file name and the name of the required section for cleaning.

# Example of usage
``` chmod +x script.sh ```

``` ./script.sh ```
