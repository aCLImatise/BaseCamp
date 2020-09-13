version 1.0

task BcbioVmpyAwsCluster {
  input {
    String bootstrap
    String tools
    String ssh
    String start
    String setup
    String stop
  }
  command <<<
    bcbio_vm_py aws cluster \
      ~{bootstrap} \
      ~{tools} \
      ~{ssh} \
      ~{start} \
      ~{setup} \
      ~{stop}
  >>>
  parameter_meta {
    bootstrap: "Update a bcbio AWS system with the latest code and"
    tools: "command             Run a script on the bcbio frontend node inside a"
    ssh: "SSH to a bcbio cluster"
    start: "Start a bcbio cluster"
    setup: "Rerun cluster configuration steps"
    stop: "Stop a bcbio cluster"
  }
  output {
    File out_stdout = stdout()
  }
}