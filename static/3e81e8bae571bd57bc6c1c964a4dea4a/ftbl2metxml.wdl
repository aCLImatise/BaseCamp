version 1.0

task Ftbl2metxml {
  input {
    String network
  }
  command <<<
    ftbl2metxml \
      ~{network}
  >>>
  parameter_meta {
    network: ""
  }
  output {
    File out_stdout = stdout()
  }
}