version 1.0

task DeepbgcInfo {
  input {
    Boolean? debug
  }
  command <<<
    deepbgc info \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}