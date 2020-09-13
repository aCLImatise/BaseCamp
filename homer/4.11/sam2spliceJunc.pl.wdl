version 1.0

task Sam2spliceJuncpl {
  command <<<
    sam2spliceJunc_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}