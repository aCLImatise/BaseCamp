version 1.0

task Quasitools {
  input {
    Boolean? verbose
  }
  command <<<
    quasitools \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "Enables verbose mode."
  }
  output {
    File out_stdout = stdout()
  }
}