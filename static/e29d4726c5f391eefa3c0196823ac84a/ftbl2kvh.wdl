version 1.0

task Ftbl2kvh {
  input {
    String network
  }
  command <<<
    ftbl2kvh \
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