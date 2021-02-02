version 1.0

task ArbProbe {
  command <<<
    arb_probe
  >>>
  output {
    File out_stdout = stdout()
  }
}