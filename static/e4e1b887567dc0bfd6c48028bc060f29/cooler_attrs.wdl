version 1.0

task CoolerAttrs {
  input {
    String uri
  }
  command <<<
    cooler attrs \
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