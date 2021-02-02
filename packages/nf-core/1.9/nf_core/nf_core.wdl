version 1.0

task Nfcore {
  input {
    Boolean? verbose
  }
  command <<<
    nf_core \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "Verbose output (print debug statements)"
  }
  output {
    File out_stdout = stdout()
  }
}