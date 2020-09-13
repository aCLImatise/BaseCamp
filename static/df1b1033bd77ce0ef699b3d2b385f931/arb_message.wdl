version 1.0

task ArbMessage {
  command <<<
    arb_message
  >>>
  output {
    File out_stdout = stdout()
  }
}