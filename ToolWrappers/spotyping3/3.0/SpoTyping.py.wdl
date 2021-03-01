version 1.0

task SpoTypingpy {
  input {
    Boolean? seq
    String? swift
    Int? min
    Int? rm_in
    Directory? outdir
    String? basename_output_defaultspotyping
    Boolean? no_query
    Boolean? filter
    Boolean? sorted
    Boolean? debug
    Int fast_q_one
  }
  command <<<
    SpoTyping_py \
      ~{fast_q_one} \
      ~{if (seq) then "--seq" else ""} \
      ~{if defined(swift) then ("--swift " +  '"' + swift + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(rm_in) then ("--rmin " +  '"' + rm_in + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(basename_output_defaultspotyping) then ("--output " +  '"' + basename_output_defaultspotyping + '"') else ""} \
      ~{if (no_query) then "--noQuery" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (sorted) then "--sorted" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seq: "Set this if input is a fasta file that contains only a\\ncomplete genomic sequence or assembled contigs from an\\nisolate [Default is off]"
    swift: "swift mode, either \\\"on\\\" or \\\"off\\\" [Defulat: on]"
    min: "minimum number of error-free hits to support presence\\nof a spacer [Default: 0.1*average read depth]"
    rm_in: "minimum number of 1-error-tolerant hits to support\\npresence of a spacer [Default: 0.12 * average read\\ndepth]"
    outdir: "output directory [Default: running directory]"
    basename_output_defaultspotyping: "basename of output files generated [Default:\\nSpoTyping]"
    no_query: "suppress the SITVIT database query [Default is off]"
    filter: "stringent filtering of reads (used only for low\\nquality reads)[Default is off]"
    sorted: "set this only when the reads are sorted to a reference\\ngenome [Default is off]"
    debug: "enable debug mode, keeping all intermediate files for\\nchecking [Default is off]\\n"
    fast_q_one: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}