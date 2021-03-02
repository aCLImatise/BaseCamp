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
    docker: "None"
  }
  parameter_meta {
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}