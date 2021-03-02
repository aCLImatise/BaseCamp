version 1.0

task ProductTypestsv {
  command <<<
    product_types_tsv
  >>>
  runtime {
    docker: "quay.io/biocontainers/morpheus:287--0"
  }
  output {
    File out_stdout = stdout()
  }
}