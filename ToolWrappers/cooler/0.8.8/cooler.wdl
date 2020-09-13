version 1.0

task Cooler {
  input {
    Boolean? verbose
    Boolean? debug
  }
  command <<<
    cooler \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    verbose: "Verbose logging."
    debug: "On error, drop into the post-mortem debugger shell."
  }
  output {
    File out_stdout = stdout()
  }
}