version 1.0

task Bash5tools.py {
  input {
    Boolean? verbose
    Boolean? profile
    Boolean? debug
    String? outfile_prefix
    String? read_type
    String? out_type
    Int? minlength
    Int? min_read_score
    Int? min_passes
    String input_dot_bas_doth_five
  }
  command <<<
    bash5tools.py \
      ~{input_dot_bas_doth_five} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--profile" false="" profile} \
      ~{true="--debug" false="" debug} \
      ~{if defined(outfile_prefix) then ("--outFilePrefix " +  '"' + outfile_prefix + '"') else ""} \
      ~{if defined(read_type) then ("--readType " +  '"' + read_type + '"') else ""} \
      ~{if defined(out_type) then ("--outType " +  '"' + out_type + '"') else ""} \
      ~{if defined(minlength) then ("--minLength " +  '"' + minlength + '"') else ""} \
      ~{if defined(min_read_score) then ("--minReadScore " +  '"' + min_read_score + '"') else ""} \
      ~{if defined(min_passes) then ("--minPasses " +  '"' + min_passes + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Set the verbosity level (default: None)"
    profile: "Print runtime profile at exit (default: False)"
    debug: "Catch exceptions in debugger (requires ipdb) (default: False)"
    outfile_prefix: "output filename prefix [None]"
    read_type: "read type (ccs, subreads, or unrolled) []"
    out_type: "output file type (fasta, fastq) [fasta]"
    minlength: "min read length [0]"
    min_read_score: "min read score, valid only with --readType={unrolled,subreads} [0]"
    min_passes: "min number of CCS passes, valid only with --readType=ccs [0]"
    input_dot_bas_doth_five: "input .bas.h5 filename"
  }
}