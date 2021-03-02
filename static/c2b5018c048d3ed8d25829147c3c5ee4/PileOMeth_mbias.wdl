version 1.0

task PileOMethMbias {
  input {
    Int? minimum_mapq_threshold
    Int? minimum_phred_threshold
    Int? maximum_perbase_depth
    String? region_string_extract
    File? bed_file_listing
    Boolean? keep_dupes
    Boolean? keep_singleton
    String? keep_discordant
    Boolean? ignore_flags
    Boolean? txt
    Boolean? no_svg
    Boolean? no_cpg
    Boolean? chg
    Boolean? chh
    String ref_dot_fa
    String sorted_alignments_dot_bam
    String output_dot_prefix
  }
  command <<<
    PileOMeth mbias \
      ~{ref_dot_fa} \
      ~{sorted_alignments_dot_bam} \
      ~{output_dot_prefix} \
      ~{if defined(minimum_mapq_threshold) then ("-q " +  '"' + minimum_mapq_threshold + '"') else ""} \
      ~{if defined(minimum_phred_threshold) then ("-p " +  '"' + minimum_phred_threshold + '"') else ""} \
      ~{if defined(maximum_perbase_depth) then ("-D " +  '"' + maximum_perbase_depth + '"') else ""} \
      ~{if defined(region_string_extract) then ("-r " +  '"' + region_string_extract + '"') else ""} \
      ~{if defined(bed_file_listing) then ("-l " +  '"' + bed_file_listing + '"') else ""} \
      ~{if (keep_dupes) then "--keepDupes" else ""} \
      ~{if (keep_singleton) then "--keepSingleton" else ""} \
      ~{if defined(keep_discordant) then ("--keepDiscordant " +  '"' + keep_discordant + '"') else ""} \
      ~{if (ignore_flags) then "--ignoreFlags" else ""} \
      ~{if (txt) then "--txt" else ""} \
      ~{if (no_svg) then "--noSVG" else ""} \
      ~{if (no_cpg) then "--noCpG" else ""} \
      ~{if (chg) then "--CHG" else ""} \
      ~{if (chh) then "--CHH" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    minimum_mapq_threshold: "Minimum MAPQ threshold to include an alignment (default 10)"
    minimum_phred_threshold: "Minimum Phred threshold to include a base (default 5). This\\nmust be >0."
    maximum_perbase_depth: "Maximum per-base depth (default 2000)"
    region_string_extract: "Region string in which to extract methylation"
    bed_file_listing: "A BED file listing regions for inclusion. Note that unlike\\nsamtools mpileup, this option will utilize the strand column\\n(column 6) if present. Thus, if a region has a '+' in this\\ncolumn, then only metrics from the top strand will be\\noutput. Note that the -r option can be used to limit the\\nregions of -l."
    keep_dupes: "By default, any alignment marked as a duplicate is ignored.\\nThis option causes them to be incorporated."
    keep_singleton: "By default, if only one read in a pair aligns (a singleton)\\nthen it's ignored."
    keep_discordant: "default, paired-end alignments with the properly-paired bit\\nunset in the FLAG field are ignored. Note that the definition\\nof concordant and discordant is based on your aligner\\nsettings."
    ignore_flags: "By deault, any alignment marked as secondary (bit 0x100),\\nfailing QC (bit 0x200), a PCR/optical duplicate (0x400) or\\nsupplemental (0x800) is ignored. This equates to a value of\\n0xF00 or 3840 in decimal. If you would like to change that,\\nyou can specify a new value here.\\nignored. Specifying this causes them to be included."
    txt: "Output tab separated metrics to the screen. These can be\\nimported into R or another program for manual plotting and\\nanalysis."
    no_svg: "Don't produce the SVG files. This option implies --txt. Note\\nthat an output prefix is no longer required with this option."
    no_cpg: "Do not output CpG methylation metrics"
    chg: "Output CHG methylation metrics"
    chh: "Output CHH methylation metrics"
    ref_dot_fa: ""
    sorted_alignments_dot_bam: ""
    output_dot_prefix: ""
  }
  output {
    File out_stdout = stdout()
    File out_bed_file_listing = "${in_bed_file_listing}"
  }
}