version 1.0

task RunQuorumpy {
  command <<<
    run_quorum_py
  >>>
  output {
    File out_stdout = stdout()
  }
}