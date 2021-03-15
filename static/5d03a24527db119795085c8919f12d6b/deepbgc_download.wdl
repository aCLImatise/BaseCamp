version 1.0

task DeepbgcDownload {
  input {
    Boolean? debug
  }
  command <<<
    deepbgc download \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepbgc:0.1.26--py_0"
  }
  parameter_meta {
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}