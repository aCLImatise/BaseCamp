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
    docker: "quay.io/biocontainers/cooler:0.8.10--pyh3252c3a_0"
  }
  parameter_meta {
    uri: ""
  }
  output {
    File out_stdout = stdout()
  }
}