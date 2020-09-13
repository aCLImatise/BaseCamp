version 1.0

task FcConsensuspy {
  command <<<
    fc_consensus_py
  >>>
  output {
    File out_stdout = stdout()
  }
}