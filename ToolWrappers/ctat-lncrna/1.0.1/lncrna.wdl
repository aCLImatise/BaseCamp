version 1.0

task Lncrna {
  input {
    File? bed_file
    String? assembly
    String? out_prefix
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
    Boolean? no_bg
    Boolean? no_orf
    Int? min_match
    Int? pad
    String? gap_extend
    String? last_z
    String? bed_tools
    String? lift_over
    String l_ncrna_discovery_do_tpy
  }
  command <<<
    lncrna \
      ~{l_ncrna_discovery_do_tpy} \
      ~{if defined(bed_file) then ("--bedfile " +  '"' + bed_file + '"') else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(out_prefix) then ("--out_prefix " +  '"' + out_prefix + '"') else ""} \
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
      ~{if (no_bg) then "--no_bg" else ""} \
      ~{if (no_orf) then "--no_orf" else ""} \
      ~{if defined(min_match) then ("--minMatch " +  '"' + min_match + '"') else ""} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap_extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(last_z) then ("--lastz " +  '"' + last_z + '"') else ""} \
      ~{if defined(bed_tools) then ("--bedtools " +  '"' + bed_tools + '"') else ""} \
      ~{if defined(lift_over) then ("--liftover " +  '"' + lift_over + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed_file: "bed12 file of transcripts (default: None)"
    assembly: "assembly (default: None)"
    out_prefix: "out_prefix (default: slncky)"
    config: "path to assembly.config file. default uses config file\\nin same directory as slncky (default: None)"
    no_orth_search: "flag if you only want to filter lncs but don't want to\\nsearch for orthologs (default: False)"
    no_filter: "flag if you don't want lncs to be filtered before\\nsearching for ortholog (default: False)"
    overwrite: "forces overwrite of out_prefix.bed (default: False)"
    threads: "number of threads. default = 5 (default: 5)"
    min_overlap: "remove any transcript that overlap annotated coding\\ngene > min_overlap%. default = 0% (default: 0)"
    min_cluster: "min size of duplication clusters to remove. default=2\\n(default: 2)"
    min_coding: "min exonic identity to filter out transcript that\\naligns to orthologous coding gene. default is set by\\nlearning coding alignment distribution from data\\n(default: 0.1)"
    no_overlap: "flag if you don't want to overlap with coding\\n(default: False)"
    no_collapse: "flag if you don't want to collapse isoforms (default:\\nFalse)"
    no_dup: "flag if don't want to align to duplicates (default:\\nFalse)"
    no_self: "flag if you don't want to self-align for duplicates\\n(default: False)"
    no_coding: "flag if you don't want to align to orthologous coding\\n(default: False)"
    no_bg: "flag if you don't want to compare lnc-to-ortholog\\nalignments to a background. This flag may be useful if\\nyou want to do a 'quick-and-dirty' run of the ortholog\\nsearch. (default: False)"
    no_orf: "flag if you don't want to search for orfs (default:\\nFalse)"
    min_match: "minMatch parameter for liftover. default=0.1 (default:\\n0.1)"
    pad: "# of basepairs to search up- and down-stream when\\nlifting over lnc to ortholog (default: 50000)"
    gap_extend: "flag if you want website written visualizing\\ntranscripts that were filtered out (default: False)"
    last_z: "lastz software (default: None)"
    bed_tools: "bedtools software (default: None)"
    lift_over: "liftover software (default: None)"
    l_ncrna_discovery_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}