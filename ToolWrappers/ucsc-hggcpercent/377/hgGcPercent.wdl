version 1.0

task HgGcPercent {
  input {
    Int? win
    Boolean? no_load
    File? output_filename_stdout
    String? chr
    Boolean? no_random
    Boolean? no_dots
    Boolean? do_gaps
    Boolean? wig_out
    Int? overlap
    String? verbose
    File? bed_region_in
    File? bed_region_out
    String database
    String nib_dir
  }
  command <<<
    hgGcPercent \
      ~{database} \
      ~{nib_dir} \
      ~{if defined(win) then ("-win " +  '"' + win + '"') else ""} \
      ~{if (no_load) then "-noLoad" else ""} \
      ~{if defined(output_filename_stdout) then ("-file " +  '"' + output_filename_stdout + '"') else ""} \
      ~{if defined(chr) then ("-chr " +  '"' + chr + '"') else ""} \
      ~{if (no_random) then "-noRandom" else ""} \
      ~{if (no_dots) then "-noDots" else ""} \
      ~{if (do_gaps) then "-doGaps" else ""} \
      ~{if (wig_out) then "-wigOut" else ""} \
      ~{if defined(overlap) then ("-overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(bed_region_in) then ("-bedRegionIn " +  '"' + bed_region_in + '"') else ""} \
      ~{if defined(bed_region_out) then ("-bedRegionOut " +  '"' + bed_region_out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    win: "- change windows size (default 20000)"
    no_load: "- do not load mysql table - create bed file"
    output_filename_stdout: "- output to <filename> (stdout OK) (implies -noLoad)"
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
  output {
    File out_stdout = stdout()
    File out_output_filename_stdout = "${in_output_filename_stdout}"
  }
}