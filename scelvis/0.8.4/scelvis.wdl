version 1.0

task Scelvis {
  input {
    Boolean? verbose
  }
  command <<<
    scelvis \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "Increase verbosity."
  }
  output {
    File out_stdout = stdout()
  }
}