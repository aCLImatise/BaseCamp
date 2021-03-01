version 1.0

task ArbProbe {
  command <<<
    arb_probe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}