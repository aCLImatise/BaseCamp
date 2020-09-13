version 1.0

task SynapseDelete {
  command <<<
    synapse delete
  >>>
  output {
    File out_stdout = stdout()
  }
}