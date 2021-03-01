version 1.0

task Ftbl2kvhpy {
  input {
    String network
  }
  command <<<
    ftbl2kvh_py \
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