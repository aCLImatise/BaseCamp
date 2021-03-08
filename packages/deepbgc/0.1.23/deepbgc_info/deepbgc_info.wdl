version 1.0

task DeepbgcInfo {
  input {
    Boolean? debug
  }
  command <<<
    deepbgc info \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepbgc:0.1.23--py_0"
  }
  parameter_meta {
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}