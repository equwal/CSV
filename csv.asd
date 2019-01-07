(asdf:defsystem :csv
  :version "0.1.0"
  :description  "Read CSV into lists natively. Convert CSV into lists dangerously."
  :author       "Spenser Truex spensertruex.com"
  :serial       t
  :license      "GNU GPL, version 3"
  :components   ((:file "package")
                 (:file "utils")
                 (:file "csv")))
