version 1.0

task ExtractUnmappedSubreadspy {
  input {
    Boolean? verbose
    Boolean? profile
    Boolean? debug
    String fast_a
    Int cmp_doth_five
  }
  command <<<
    extractUnmappedSubreads_py \
      ~{fast_a} \
      ~{cmp_doth_five} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (profile) then "--profile" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    verbose: "Set the verbosity level (default: None)"
    profile: "Print runtime profile at exit (default: False)"
    debug: "Catch exceptions in debugger (requires ipdb) (default: False)"
    fast_a: "a fasta file containing all subreads."
    cmp_doth_five: "input cmp.h5 files."
  }
  output {
    File out_stdout = stdout()
  }
}