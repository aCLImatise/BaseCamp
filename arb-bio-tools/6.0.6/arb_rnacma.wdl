version 1.0

task ArbRnacma {
  command <<<
    arb_rnacma
  >>>
  output {
    File out_stdout = stdout()
  }
}