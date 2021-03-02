version 1.0

task ExtractExonspy {
  input {
    Boolean? verbose
  }
  command <<<
    extract_exons_py \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "also print some statistics to stderr"
  }
  output {
    File out_stdout = stdout()
  }
}