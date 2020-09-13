version 1.0

task SynapseOnweb {
  command <<<
    synapse onweb
  >>>
  output {
    File out_stdout = stdout()
  }
}