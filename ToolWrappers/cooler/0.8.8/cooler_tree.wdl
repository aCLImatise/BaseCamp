version 1.0

task CoolerTree {
  input {
    String uri
  }
  command <<<
    cooler tree \
      ~{uri}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    uri: ""
  }
  output {
    File out_stdout = stdout()
  }
}