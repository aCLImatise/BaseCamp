version 1.0

task Slncky {
  input {
    File? config
    Boolean? no_orth_search
    Boolean? no_filter
    Boolean? overwrite
    Int? threads
    Int? min_overlap
    Int? min_cluster
    Int? min_coding
    Boolean? no_overlap
    Boolean? no_collapse
    Boolean? no_dup
    Boolean? no_self
    Boolean? no_coding
    Int? min_noncoding
    Boolean? no_bg
    Boolean? no_orf
    File? bed_tools
    File? lift_over
    Int? min_match
    String? pad
    File? last_z
    String? gap_extend
    String bed_file
    String assembly
    String out_prefix
  }
  command <<<
    slncky \
      ~{bed_file} \
      ~{assembly} \
      ~{out_prefix} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (no_orth_search) then "--no_orth_search" else ""} \
      ~{if (no_filter) then "--no_filter" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(min_overlap) then ("--min_overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(min_cluster) then ("--min_cluster " +  '"' + min_cluster + '"') else ""} \
      ~{if defined(min_coding) then ("--min_coding " +  '"' + min_coding + '"') else ""} \
      ~{if (no_overlap) then "--no_overlap" else ""} \
      ~{if (no_collapse) then "--no_collapse" else ""} \
      ~{if (no_dup) then "--no_dup" else ""} \
      ~{if (no_self) then "--no_self" else ""} \
      ~{if (no_coding) then "--no_coding" else ""} \
      ~{if defined(min_noncoding) then ("--min_noncoding " +  '"' + min_noncoding + '"') else ""} \
      ~{if (no_bg) then "--no_bg" else ""} \
      ~{if (no_orf) then "--no_orf" else ""} \
      ~{if defined(bed_tools) then ("--bedtools " +  '"' + bed_tools + '"') else ""} \
      ~{if defined(lift_over) then ("--liftover " +  '"' + lift_over + '"') else ""} \
      ~{if defined(min_match) then ("--minMatch " +  '"' + min_match + '"') else ""} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""} \
      ~{if defined(last_z) then ("--lastz " +  '"' + last_z + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap_extend " +  '"' + gap_extend + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "path to assembly.config file. default uses config file\\nin same directory as slncky"
    no_orth_search: "flag if you only want to filter lncs but don't want to\\nsearch for orthologs"
    no_filter: "flag if you don't want lncs to be filtered before\\nsearching for ortholog"
    overwrite: "forces overwrite of out_prefix.bed"
    threads: "number of threads. default = 5"
    min_overlap: "remove any transcript that overlap annotated coding\\ngene > min_overlap%. default = 0%"
    min_cluster: "min size of duplication clusters to remove. default=2"
    min_coding: "min exonic identity to filter out transcript that\\naligns to orthologous coding gene. default is set by\\nlearning coding alignment distribution from data"
    no_overlap: "flag if you don't want to overlap with coding"
    no_collapse: "flag if you don't want to collapse isoforms"
    no_dup: "flag if don't want to align to duplicates"
    no_self: "flag if you don't want to self-align for duplicates"
    no_coding: "flag if you don't want to align to orthologous coding"
    min_noncoding: "min exonic identity to filter out transcript that\\naligns to orthologous noncoding gene. default=0"
    no_bg: "flag if you don't want to compare lnc-to-ortholog\\nalignments to a background. This flag may be useful if\\nyou want to do a 'quick-and-dirty' run of the ortholog\\nsearch."
    no_orf: "flag if you don't want to search for orfs"
    bed_tools: "path to bedtools"
    lift_over: "path to liftOver"
    min_match: "minMatch parameter for liftover. default=0.1"
    pad: "# of basepairs to search up- and down-stream when\\nlifting over lnc to ortholog"
    last_z: "path to lastz"
    gap_extend: "flag for if you want slncky to create a website\\nvisualizing results\\n"
    bed_file: "bed12 file of transcripts"
    assembly: "assembly"
    out_prefix: "out_prefix"
  }
  output {
    File out_stdout = stdout()
  }
}