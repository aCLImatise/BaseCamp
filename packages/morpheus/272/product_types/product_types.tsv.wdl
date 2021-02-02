version 1.0

task ProductTypestsv {
  command <<<
    product_types_tsv
  >>>
  output {
    File out_stdout = stdout()
  }
}