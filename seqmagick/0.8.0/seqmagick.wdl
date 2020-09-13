version 1.0

task Seqmagick {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? v
  }
  command <<<
    seqmagick \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    verbose: "Be more verbose. Specify -vv or -vvv for even more"
    quiet: "Suppress output"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}