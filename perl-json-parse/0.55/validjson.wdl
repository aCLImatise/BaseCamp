version 1.0

task Validjson {
  input {
    Boolean? verbose
  }
  command <<<
    validjson \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "Get confirmation that the files are valid."
  }
  output {
    File out_stdout = stdout()
  }
}