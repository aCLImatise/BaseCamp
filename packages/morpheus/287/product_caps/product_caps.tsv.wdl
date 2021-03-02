version 1.0

task ProductCapstsv {
  command <<<
    product_caps_tsv
  >>>
  runtime {
    docker: "quay.io/biocontainers/morpheus:287--0"
  }
  output {
    File out_stdout = stdout()
  }
}