version 1.0

task ArbTreegen {
  command <<<
    arb_treegen
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}