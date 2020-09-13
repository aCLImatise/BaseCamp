version 1.0

task Phizz {
  input {
    Boolean? verbose
  }
  command <<<
    phizz \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: ""
  }
  output {
    File out_stdout = stdout()
  }
}