version 1.0

task HgGcPercent {
  input {
    Int? win
    Boolean? no_load
    File? file
    String? chr
    Boolean? no_random
    Boolean? no_dots
    Boolean? do_gaps
    Boolean? wig_out
    String? overlap
    String? verbose
    String? bed_region_in
    String? bed_region_out
    String database
    String nib_dir
  }
  command <<<
    hgGcPercent \
      ~{database} \
      ~{nib_dir} \
      ~{if defined(win) then ("-win " +  '"' + win + '"') else ""} \
      ~{true="-noLoad" false="" no_load} \
      ~{if defined(file) then ("-file " +  '"' + file + '"') else ""} \
      ~{if defined(chr) then ("-chr " +  '"' + chr + '"') else ""} \
      ~{true="-noRandom" false="" no_random} \
      ~{true="-noDots" false="" no_dots} \
      ~{true="-doGaps" false="" do_gaps} \
      ~{true="-wigOut" false="" wig_out} \
      ~{if defined(overlap) then ("-overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(bed_region_in) then ("-bedRegionIn " +  '"' + bed_region_in + '"') else ""} \
      ~{if defined(bed_region_out) then ("-bedRegionOut " +  '"' + bed_region_out + '"') else ""}
  >>>
  parameter_meta {
    win: "- change windows size (default 20000)"
    no_load: "- do not load mysql table - create bed file"
    file: "- output to <filename> (stdout OK) (implies -noLoad)"
    chr: "- process only chrN from the nibDir"
    no_random: "- ignore randome chromosomes from the nibDir"
    no_dots: "- do not display ... progress during processing"
    do_gaps: "- process gaps correctly (default: gaps are not counted as GC)"
    wig_out: "- output wiggle ascii data ready to pipe to wigEncode"
    overlap: "- overlap windows by N bases (default 0)"
    verbose: "- display details to stderr during processing"
    bed_region_in: "Read in a bed file for GC content in specific regions and write to bedRegionsOut"
    bed_region_out: "Write a bed file of GC content in specific regions from bedRegionIn"
    database: ""
    nib_dir: ""
  }
}