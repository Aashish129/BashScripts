# Brace Expansions

```sh
# Basic Brace Expansion
echo {a,b,c}               # Output: a b c

# Generating Sequences
echo {1..5}                # Output: 1 2 3 4 5

# Step Values
echo {1..10..2}            # Output: 1 3 5 7 9

# Combining Strings and Sequences
echo file{1..3}.txt        # Output: file1.txt file2.txt file3.txt

# Nested Brace Expansion
echo {A..C}{1..2}          # Output: A1 A2 B1 B2 C1 C2

# Prefix and Suffix Strings
echo pre{1..3}post         # Output: pre1post pre2post pre3post

# Comma-separated Lists
echo {red,green,blue}      # Output: red green blue

# Empty Braces
echo X{,Y,Z}A              # Output: XA XYA XZA

# Nested Directories
mkdir -p project/{src,bin,lib/{utils,core}}  # Creates nested directories

# Combining Ranges and Lists
echo {A,B}{1..3}           # Output: A1 A2 A3 B1 B2 B3

# Multiple Ranges and Lists
echo {A..C}{1..3}{X,Y}     # Output: A1X A1Y A2X A2Y A3X A3Y B1X B1Y B2X B2Y B3X B3Y C1X C1Y C2X C2Y C3X C3Y

# Escaping Braces
echo \{A,B,C\}             # Output: {A,B,C}

# Multiple Sets of Braces
echo {A,B}{1,2}{X,Y}       # Output: A1X A1Y A2X A2Y B1X B1Y B2X B2Y
```
## I/O 

```sh
# Redirect stdout to a file
echo "Hello" > output.txt

# Append stdout to a file
echo "World" >> output.txt

# Redirect stdin from a file
wc -l < input.txt

# Redirect stdout and stderr to different files
ls -l > listing.txt 2> errors.log

# Redirect stdout and stderr to the same file
ls -l > output.log 2>&1

# Pipe stdout of one command into stdin of another
cat file.txt | grep "pattern"

# Here Documents for providing multiple lines of input
cat << EOF
Line 1
Line 2
EOF

# Using file descriptors directly
echo "Direct to stderr" >&2

# Named Pipes (FIFOs)
mkfifo mypipe
```
