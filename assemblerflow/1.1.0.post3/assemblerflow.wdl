version 1.0

task Assemblerflow {
  input {
    Boolean? debug
  }
  command <<<
    assemblerflow \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    debug: "Set log to debug mode"
  }
  output {
    File out_stdout = stdout()
  }
}