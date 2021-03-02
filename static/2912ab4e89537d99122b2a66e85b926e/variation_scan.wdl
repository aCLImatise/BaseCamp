version 1.0

task Variationscan {
  command <<<
    variation_scan
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}