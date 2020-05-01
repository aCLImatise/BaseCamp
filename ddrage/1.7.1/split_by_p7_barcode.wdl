version 1.0

task SplitByP7Barcode {
  input {
    Boolean fF
  }
  command <<<
    split_by_p7_barcode \
      ~{true="-f" false="" fF}
  >>>
}