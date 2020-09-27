version 1.0

task ProductCapstsv {
  command <<<
    product_caps_tsv
  >>>
  output {
    File out_stdout = stdout()
  }
}