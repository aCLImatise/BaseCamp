version 1.0

task Ftbl2netanpy {
  input {
    String network
  }
  command <<<
    ftbl2netan_py \
      ~{network}
  >>>
  parameter_meta {
    network: ""
  }
  output {
    File out_stdout = stdout()
  }
}