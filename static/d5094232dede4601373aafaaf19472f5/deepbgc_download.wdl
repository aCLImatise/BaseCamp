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
    docker: "None"
  }
  parameter_meta {
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}