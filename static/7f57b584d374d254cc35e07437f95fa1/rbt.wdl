version 1.0

task Rbt {
  input {
    Boolean? verbose
  }
  command <<<
    rbt \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "Verbose output."
  }
  output {
    File out_stdout = stdout()
  }
}