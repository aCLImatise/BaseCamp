version 1.0

task Vispr {
  input {
    Boolean? debug
  }
  command <<<
    vispr \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    debug: "Print debug info."
  }
  output {
    File out_stdout = stdout()
  }
}