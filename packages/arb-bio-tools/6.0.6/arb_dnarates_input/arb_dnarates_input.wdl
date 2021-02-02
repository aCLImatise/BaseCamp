version 1.0

task ArbDnaratesInput {
  command <<<
    arb_dnarates input
  >>>
  output {
    File out_stdout = stdout()
  }
}