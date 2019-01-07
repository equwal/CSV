(asdf:defsystem :csv
  :version "0.1.0"
  :description  "Read CSV files into lists."
  :author       "Spenser Truex spensertruex.com"
  :serial       t
  :license      "GNU GPL, version 3"
  :components   ((:file "package")
                 (:file "utils")
                 (:file "csv")))
