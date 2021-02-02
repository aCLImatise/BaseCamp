version 1.0

task AsmToAGPpl {
  command <<<
    asmToAGP_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}