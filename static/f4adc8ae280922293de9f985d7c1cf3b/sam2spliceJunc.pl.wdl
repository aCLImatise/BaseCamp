version 1.0

task Sam2spliceJuncpl {
  command <<<
    sam2spliceJunc_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}