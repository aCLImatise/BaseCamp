version 1.0

task PileOMethExtract {
  input {
    Int? minimum_mapq_threshold
    Int? minimum_phred_threshold
    Int? maximum_perbase_depth
    Int? minimum_perbase_depth
    Boolean? merge_context
    String? region_string_extract
    File? bed_file_listing
    File? op_ref
    Boolean? keep_dupes
    Boolean? keep_singleton
    String? keep_discordant
    Boolean? ignore_flags
    Boolean? no_cpg
    Boolean? chg
    Boolean? chh
    Boolean? fraction
    Boolean? counts
    Boolean? log_it
    Boolean? methyl_kit
    Int? ot
    Int? ob
    Int? c_tot
    Int? cto_b
    String ref_dot_fa
    String sorted_alignments_dot_bam
  }
  command <<<
    PileOMeth extract \
      ~{ref_dot_fa} \
      ~{sorted_alignments_dot_bam} \
      ~{if defined(minimum_mapq_threshold) then ("-q " +  '"' + minimum_mapq_threshold + '"') else ""} \
      ~{if defined(minimum_phred_threshold) then ("-p " +  '"' + minimum_phred_threshold + '"') else ""} \
      ~{if defined(maximum_perbase_depth) then ("-D " +  '"' + maximum_perbase_depth + '"') else ""} \
      ~{if defined(minimum_perbase_depth) then ("-d " +  '"' + minimum_perbase_depth + '"') else ""} \
      ~{if (merge_context) then "--mergeContext" else ""} \
      ~{if defined(region_string_extract) then ("-r " +  '"' + region_string_extract + '"') else ""} \
      ~{if defined(bed_file_listing) then ("-l " +  '"' + bed_file_listing + '"') else ""} \
      ~{if defined(op_ref) then ("--opref " +  '"' + op_ref + '"') else ""} \
      ~{if (keep_dupes) then "--keepDupes" else ""} \
      ~{if (keep_singleton) then "--keepSingleton" else ""} \
      ~{if defined(keep_discordant) then ("--keepDiscordant " +  '"' + keep_discordant + '"') else ""} \
      ~{if (ignore_flags) then "--ignoreFlags" else ""} \
      ~{if (no_cpg) then "--noCpG" else ""} \
      ~{if (chg) then "--CHG" else ""} \
      ~{if (chh) then "--CHH" else ""} \
      ~{if (fraction) then "--fraction" else ""} \
      ~{if (counts) then "--counts" else ""} \
      ~{if (log_it) then "--logit" else ""} \
      ~{if (methyl_kit) then "--methylKit" else ""} \
      ~{if defined(ot) then ("--OT " +  '"' + ot + '"') else ""} \
      ~{if defined(ob) then ("--OB " +  '"' + ob + '"') else ""} \
      ~{if defined(c_tot) then ("--CTOT " +  '"' + c_tot + '"') else ""} \
      ~{if defined(cto_b) then ("--CTOB " +  '"' + cto_b + '"') else ""}
  >>>
  parameter_meta {
    minimum_mapq_threshold: "Minimum MAPQ threshold to include an alignment (default 10)"
    minimum_phred_threshold: "Minimum Phred threshold to include a base (default 5). This\\nmust be >0."
    maximum_perbase_depth: "Maximum per-base depth (default 2000)"
    minimum_perbase_depth: "Minimum per-base depth for reporting output. If you use"
    merge_context: ", this then applies to the merged CpG/CHG."
    region_string_extract: "Region string in which to extract methylation"
    bed_file_listing: "A BED file listing regions for inclusion. Note that unlike\\nsamtools mpileup, this option will utilize the strand column\\n(column 6) if present. Thus, if a region has a '+' in this\\ncolumn, then only metrics from the top strand will be\\noutput. Note that the -r option can be used to limit the\\nregions of -l."
    op_ref: "Output filename prefix. CpG/CHG/CHH context metrics will be\\noutput to STR_CpG.bedGraph and so on."
    keep_dupes: "By default, any alignment marked as a duplicate is ignored.\\nThis option causes them to be incorporated."
    keep_singleton: "By default, if only one read in a pair aligns (a singleton)\\nthen it's ignored."
    keep_discordant: "default, paired-end alignments with the properly-paired bit\\nunset in the FLAG field are ignored. Note that the definition\\nof concordant and discordant is based on your aligner\\nsettings."
    ignore_flags: "By deault, any alignment marked as secondary (bit 0x100),\\nfailing QC (bit 0x200), a PCR/optical duplicate (0x400) or\\nsupplemental (0x800) is ignored. This equates to a value of\\n0xF00 or 3840 in decimal. If you would like to change that,\\nyou can specify a new value here.\\nignored. Specifying this causes them to be included."
    no_cpg: "Do not output CpG context methylation metrics"
    chg: "Output CHG context methylation metrics"
    chh: "Output CHH context methylation metrics"
    fraction: "Extract fractional methylation (only) at each position. This\\nproduces a file with a .meth.bedGraph extension."
    counts: "Extract base counts (only) at each position. This produces a\\nfile with a .counts.bedGraph extension."
    log_it: "Extract logit(M/(M+U)) (only) at each position. This produces\\na file with a .logit.bedGraph extension."
    methyl_kit: "Output in the format required by methylKit. Note that this is\\nincompatible with --mergeContext, --fraction and --counts."
    ot: ",INT,INT,INT Inclusion bounds for methylation calls from reads/pairs\\norigination from the original top strand. Suggested values can\\nbe obtained from the MBias program. Each integer represents a\\n1-based position on a read. For example --OT A,B,C,D\\ntranslates to, \\\"Include calls at positions from A through B\\non read #1 and C through D on read #2\\\". If a 0 is used a any\\nposition then that is translated to mean start/end of the\\nalignment, as appropriate. For example, --OT 5,0,0,0 would\\ninclude all but the first 4 bases on read #1. Users are\\nstrongly advised to consult a methylation bias plot, for\\nexample by using the MBias program."
    ob: ",INT,INT,INT"
    c_tot: ",INT,INT,INT"
    cto_b: ",INT,INT,INT As with --OT, but for the original bottom, complementary\\nto the original top, and complementary to the original bottom\\nstrands, respectively."
    ref_dot_fa: ""
    sorted_alignments_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_bed_file_listing = "${in_bed_file_listing}"
    File out_op_ref = "${in_op_ref}"
  }
}