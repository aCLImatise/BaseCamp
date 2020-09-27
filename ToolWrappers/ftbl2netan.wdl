version 1.0

task Ftbl2netan {
  input {
    String network
  }
  command <<<
    ftbl2netan \
      ~{network}
  >>>
  parameter_meta {
    network: ""
  }
  output {
    File out_stdout = stdout()
  }
}