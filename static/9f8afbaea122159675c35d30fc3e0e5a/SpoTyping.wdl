version 1.0

task SpoTyping.py {
  input {
    Boolean? seq
    String? swift
    Int? min
    Int? rm_in
    String? outdir
    String? basename_output_files
    Boolean? no_query
    Boolean? filter
    Boolean? sorted
    Boolean? debug
    String fast_q_one_slash_fast_a
    String fast_q_two
  }
  command <<<
    SpoTyping.py \
      ~{fast_q_one_slash_fast_a} \
      ~{fast_q_two} \
      ~{true="--seq" false="" seq} \
      ~{if defined(swift) then ("--swift " +  '"' + swift + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(rm_in) then ("--rmin " +  '"' + rm_in + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(basename_output_files) then ("--output " +  '"' + basename_output_files + '"') else ""} \
      ~{true="--noQuery" false="" no_query} \
      ~{true="--filter" false="" filter} \
      ~{true="--sorted" false="" sorted} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    seq: "Set this if input is a fasta file that contains only a complete genomic sequence or assembled contigs from an isolate [Default is off]"
    swift: "swift mode, either \"on\" or \"off\" [Defulat: on]"
    min: "minimum number of error-free hits to support presence of a spacer [Default: 0.1*average read depth]"
    rm_in: "minimum number of 1-error-tolerant hits to support presence of a spacer [Default: 0.12 * average read depth]"
    outdir: "output directory [Default: running directory]"
    basename_output_files: "basename of output files generated [Default: SpoTyping]"
    no_query: "suppress the SITVIT database query [Default is off]"
    filter: "stringent filtering of reads (used only for low quality reads)[Default is off]"
    sorted: "set this only when the reads are sorted to a reference genome [Default is off]"
    debug: "enable debug mode, keeping all intermediate files for checking [Default is off]"
    fast_q_one_slash_fast_a: ""
    fast_q_two: ""
  }
}