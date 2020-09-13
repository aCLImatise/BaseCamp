version 1.0

task ArbNaligner {
  command <<<
    arb_naligner
  >>>
  output {
    File out_stdout = stdout()
  }
}