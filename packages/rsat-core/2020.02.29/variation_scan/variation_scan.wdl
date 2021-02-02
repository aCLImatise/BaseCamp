version 1.0

task Variationscan {
  command <<<
    variation_scan
  >>>
  output {
    File out_stdout = stdout()
  }
}