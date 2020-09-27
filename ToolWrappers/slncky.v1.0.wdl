version 1.0

task Slnckyv10 {
  input {
    Boolean? no_orth_search
    Boolean? no_filter
    Boolean? no_bg
    Boolean? no_orf
    File? bed_tools
    File? lift_over
    Int? min_match
    String? pad
    Boolean? web
    String? config
    String bed_file
    String assembly
  }
  command <<<
    slncky_v1_0 \
      ~{bed_file} \
      ~{assembly} \
      ~{if (no_orth_search) then "--no_orth_search" else ""} \
      ~{if (no_filter) then "--no_filter" else ""} \
      ~{if (no_bg) then "--no_bg" else ""} \
      ~{if (no_orf) then "--no_orf" else ""} \
      ~{if defined(bed_tools) then ("--bedtools " +  '"' + bed_tools + '"') else ""} \
      ~{if defined(lift_over) then ("--liftover " +  '"' + lift_over + '"') else ""} \
      ~{if defined(min_match) then ("--minMatch " +  '"' + min_match + '"') else ""} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""} \
      ~{if (web) then "--web" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    no_orth_search: "flag if you only want to filter lncs but don't want to"
    no_filter: "flag if you don't want lncs to be filtered before"
    no_bg: "flag if you don't want to compare lnc-to-ortholog"
    no_orf: "flag if you don't want to search for orfs"
    bed_tools: "path to bedtools"
    lift_over: "path to liftOver"
    min_match: "minMatch parameter for liftover. default=0.1"
    pad: "# of basepairs to search up- and down-stream when"
    web: "flag for if you want slncky to create a website"
    config: ""
    bed_file: "bed12 file of transcripts"
    assembly: "assembly"
  }
  output {
    File out_stdout = stdout()
  }
}