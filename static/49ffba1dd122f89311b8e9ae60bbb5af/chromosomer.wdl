version 1.0

task Chromosomer {
  input {
    Boolean? debug
    Boolean? v
  }
  command <<<
    chromosomer \
      ~{if (debug) then "--debug" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    debug: "show debugging messages"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}