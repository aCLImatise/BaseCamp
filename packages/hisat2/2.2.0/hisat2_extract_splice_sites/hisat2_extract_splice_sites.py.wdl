version 1.0

task Hisat2ExtractSpliceSitespy {
  input {
    Boolean? verbose
  }
  command <<<
    hisat2_extract_splice_sites_py \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "also print some statistics to stderr"
  }
  output {
    File out_stdout = stdout()
  }
}