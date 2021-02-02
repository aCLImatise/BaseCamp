version 1.0

task Pathoscope {
  input {
    Boolean? verbose
  }
  command <<<
    pathoscope \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "Prints verbose text while running"
  }
  output {
    File out_stdout = stdout()
  }
}