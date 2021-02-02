version 1.0

task ArbDnarates {
  command <<<
    arb_dnarates
  >>>
  output {
    File out_stdout = stdout()
  }
}