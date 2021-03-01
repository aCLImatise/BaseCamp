version 1.0

task ProductCapstsv {
  command <<<
    product_caps_tsv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}