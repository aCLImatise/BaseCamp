version 1.0

task Mbremoveduplicates {
  input {
    Boolean? verbose
  }
  command <<<
    mb_remove_duplicates \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}