version 1.0

task Staramr {
  input {
    Boolean? verbose
    Boolean? v
  }
  command <<<
    staramr \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    verbose: "Turn on verbose logging [False]."
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}