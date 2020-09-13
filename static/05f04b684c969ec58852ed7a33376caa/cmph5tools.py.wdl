version 1.0

task Cmph5toolspy {
  input {
    Boolean? verbose
    Boolean? profile
    Boolean? debug
  }
  command <<<
    cmph5tools_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (profile) then "--profile" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    verbose: "Set the verbosity level (default: None)"
    profile: "Print runtime profile at exit (default: False)"
    debug: "Catch exceptions in debugger (requires ipdb) (default:\\nFalse)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}