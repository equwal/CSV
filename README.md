[homepage](http://spensertruex.com/CSV.html)

# CSV
Defines a lisp reader to read is CSV:

`#!field,field,field!#`

which is used to read in CSV files with `slurp`:

`(slurp #p"example.csv")`

and the result is a list:

``` common-lisp
CL-USER> (csv:slurp #p"example.csv")
("example" "csv" "list" "result" "like" " this")
```

This program invokes the lisp reader, making it:
1) Potentially risky to use if the input it not trusted.
2) Resource intensive for medium to large files (>5MB).

Use with care.

# Features:
Supports escaping quotes the CSV way, with quad quotes:
csv   -> lisp
`""""`->`"\""`

# Installation
Use ASDF:

``` common-lisp
CL-USER> (asdf:load-system :csv)
pT
```
