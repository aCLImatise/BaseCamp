version 1.0

task ViewMSApl {
  command <<<
    viewMSA_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}