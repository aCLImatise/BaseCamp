version 1.0

task Ftbl2metxmlpy {
  input {
    String network
  }
  command <<<
    ftbl2metxml_py \
      ~{network}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    network: ""
  }
  output {
    File out_stdout = stdout()
  }
}