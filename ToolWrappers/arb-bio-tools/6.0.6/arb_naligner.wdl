version 1.0

task ArbNaligner {
  command <<<
    arb_naligner
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}