version 1.0

task Lyner {
  input {
    Boolean? verbose
  }
  command <<<
    lyner \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: ""
  }
  output {
    File out_stdout = stdout()
  }
}