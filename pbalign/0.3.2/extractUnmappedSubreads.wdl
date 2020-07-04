version 1.0

task ExtractUnmappedSubreads.py {
  input {
    Boolean? verbose
    Boolean? profile
    Boolean? debug
    String fast_a
    String cmp_doth_five
  }
  command <<<
    extractUnmappedSubreads.py \
      ~{fast_a} \
      ~{cmp_doth_five} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--profile" false="" profile} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    verbose: "Set the verbosity level (default: None)"
    profile: "Print runtime profile at exit (default: False)"
    debug: "Catch exceptions in debugger (requires ipdb) (default: False)"
    fast_a: "a fasta file containing all subreads."
    cmp_doth_five: "input cmp.h5 files."
  }
}