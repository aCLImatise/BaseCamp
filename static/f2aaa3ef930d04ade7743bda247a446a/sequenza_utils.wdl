version 1.0

task Sequenzautils {
  input {
    Boolean? verbose
  }
  command <<<
    sequenza_utils \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "Show all logging information"
  }
  output {
    File out_stdout = stdout()
  }
}