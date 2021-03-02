version 1.0

task ArbRnacma {
  command <<<
    arb_rnacma
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}