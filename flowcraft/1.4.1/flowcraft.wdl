version 1.0

task Flowcraft {
  input {
    Boolean? debug
    Boolean? v
  }
  command <<<
    flowcraft \
      ~{if (debug) then "--debug" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    debug: "Set log to debug mode"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}