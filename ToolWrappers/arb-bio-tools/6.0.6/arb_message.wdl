version 1.0

task ArbMessage {
  command <<<
    arb_message
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}