version 1.0

task ProductTypestsv {
  command <<<
    product_types_tsv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}