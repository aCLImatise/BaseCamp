version 1.0

task Smafa {
  input {
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    smafa \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    quiet: "Unless there is an error, do not print logging information"
    verbose: "Print extra debug logging information"
  }
  output {
    File out_stdout = stdout()
  }
}