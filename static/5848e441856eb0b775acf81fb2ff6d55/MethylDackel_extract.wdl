version 1.0

task MethylDackelExtract {
  input {
    Int? minimum_mapq_threshold
    Int? minimum_phred_threshold
    Int? ignored_kept_only
    Int? minimum_perbase_depth
    Boolean? merge_context
    String? region_string_extract
    File? bed_file_listing
    File? keep_strand
    File? mapp_ability
    Float? mapp_ability_threshold
    Int? min_mappable_bases
    Boolean? output_bb_file
    File? output_bb_filename
    File? mapp_ability_bb
    Int? at
    Int? chunksize
    File? op_ref
    Boolean? keep_dupes
    Boolean? keep_singleton
    String? keep_discordant
    Boolean? ignore_flags
    Boolean? require_flags
    Boolean? no_cpg
    Boolean? chg
    Boolean? chh
    Boolean? fraction
    Boolean? counts
    Boolean? log_it
    Boolean? min_opposite_depth
    Float? max_variant_frac
    Boolean? methyl_kit
    Boolean? cytosine_report
    Int? ot
    Int? ob
    Int? c_tot
    Int? cto_b
    Int? not
    Int? nob
    Int? nc_tot
    Int? nc_tob
    String ref_dot_fa
    String sorted_alignments_dot_bam
  }
  command <<<
    MethylDackel extract \
      ~{ref_dot_fa} \
      ~{sorted_alignments_dot_bam} \
      ~{if defined(minimum_mapq_threshold) then ("-q " +  '"' + minimum_mapq_threshold + '"') else ""} \
      ~{if defined(minimum_phred_threshold) then ("-p " +  '"' + minimum_phred_threshold + '"') else ""} \
      ~{if defined(ignored_kept_only) then ("-D " +  '"' + ignored_kept_only + '"') else ""} \
      ~{if defined(minimum_perbase_depth) then ("-d " +  '"' + minimum_perbase_depth + '"') else ""} \
      ~{if (merge_context) then "--mergeContext" else ""} \
      ~{if defined(region_string_extract) then ("-r " +  '"' + region_string_extract + '"') else ""} \
      ~{if defined(bed_file_listing) then ("-l " +  '"' + bed_file_listing + '"') else ""} \
      ~{if (keep_strand) then "--keepStrand" else ""} \
      ~{if defined(mapp_ability) then ("--mappability " +  '"' + mapp_ability + '"') else ""} \
      ~{if defined(mapp_ability_threshold) then ("--mappabilityThreshold " +  '"' + mapp_ability_threshold + '"') else ""} \
      ~{if defined(min_mappable_bases) then ("--minMappableBases " +  '"' + min_mappable_bases + '"') else ""} \
      ~{if (output_bb_file) then "--outputBBFile" else ""} \
      ~{if defined(output_bb_filename) then ("--outputBBFileName " +  '"' + output_bb_filename + '"') else ""} \
      ~{if defined(mapp_ability_bb) then ("--mappabilityBB " +  '"' + mapp_ability_bb + '"') else ""} \
      ~{if defined(at) then ("-@ " +  '"' + at + '"') else ""} \
      ~{if defined(chunksize) then ("--chunkSize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(op_ref) then ("--opref " +  '"' + op_ref + '"') else ""} \
      ~{if (keep_dupes) then "--keepDupes" else ""} \
      ~{if (keep_singleton) then "--keepSingleton" else ""} \
      ~{if defined(keep_discordant) then ("--keepDiscordant " +  '"' + keep_discordant + '"') else ""} \
      ~{if (ignore_flags) then "--ignoreFlags" else ""} \
      ~{if (require_flags) then "--requireFlags" else ""} \
      ~{if (no_cpg) then "--noCpG" else ""} \
      ~{if (chg) then "--CHG" else ""} \
      ~{if (chh) then "--CHH" else ""} \
      ~{if (fraction) then "--fraction" else ""} \
      ~{if (counts) then "--counts" else ""} \
      ~{if (log_it) then "--logit" else ""} \
      ~{if (min_opposite_depth) then "--minOppositeDepth" else ""} \
      ~{if defined(max_variant_frac) then ("--maxVariantFrac " +  '"' + max_variant_frac + '"') else ""} \
      ~{if (methyl_kit) then "--methylKit" else ""} \
      ~{if (cytosine_report) then "--cytosine_report" else ""} \
      ~{if defined(ot) then ("--OT " +  '"' + ot + '"') else ""} \
      ~{if defined(ob) then ("--OB " +  '"' + ob + '"') else ""} \
      ~{if defined(c_tot) then ("--CTOT " +  '"' + c_tot + '"') else ""} \
      ~{if defined(cto_b) then ("--CTOB " +  '"' + cto_b + '"') else ""} \
      ~{if defined(not) then ("--nOT " +  '"' + not + '"') else ""} \
      ~{if defined(nob) then ("--nOB " +  '"' + nob + '"') else ""} \
      ~{if defined(nc_tot) then ("--nCTOT " +  '"' + nc_tot + '"') else ""} \
      ~{if defined(nc_tob) then ("--nCTOB " +  '"' + nc_tob + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/methyldackel:0.5.2--h7435645_0"
  }
  parameter_meta {
    minimum_mapq_threshold: "Minimum MAPQ threshold to include an alignment (default 10)"
    minimum_phred_threshold: "Minimum Phred threshold to include a base (default 5). This\\nmust be >0."
    ignored_kept_only: "Ignored, kept only for backward compatibility."
    minimum_perbase_depth: "Minimum per-base depth for reporting output. If you use"
    merge_context: ", this then applies to the merged CpG/CHG."
    region_string_extract: "Region string in which to extract methylation"
    bed_file_listing: "A BED file listing regions for inclusion."
    keep_strand: "If a BED file is specified, then this option will cause the\\nstrand column (column 6) to be utilized, if present. Thus, if\\na region has a '+' in this column, then only metrics from the\\ntop strand will be output. Note that the -r option can be used\\nto limit the regions of -l."
    mapp_ability: "A bigWig file containing mappability data for\\nfiltering reads."
    mapp_ability_threshold: "If a bigWig file is provided, this sets the\\nthreshold mappability value above which a base is considered\\nmappable (default 0.01)."
    min_mappable_bases: "If a bigWig file is provided, this sets the\\nnumber of mappable bases needed for a read to be considered\\nmappable (default 15)."
    output_bb_file: "If this is specified, a Binary Bismap (.bbm) file will\\nbe written with the same base name as the provided bigWig file,\\nbut with the .bbm extension. Neither this option nor -N have any\\neffect if a bigWig is not specified with -M."
    output_bb_filename: "If this is specified, a Binary Bismap (.bbm) file will\\nbe written at the provided filename. Neither this option nor -O\\nhave any effect if a bigWig is not specified with -M."
    mapp_ability_bb: "A .bbm file containing mappability data for\\nfiltering reads."
    at: "The number of threads to use, the default 1"
    chunksize: "The size of the genome processed by a single thread at a time.\\nThe default is 1000000 bases. This value MUST be at least 1."
    op_ref: "Output filename prefix. CpG/CHG/CHH context metrics will be\\noutput to STR_CpG.bedGraph and so on."
    keep_dupes: "By default, any alignment marked as a duplicate is ignored.\\nThis option causes them to be incorporated. This will unset\\nbit 0x400 in --ignoreFlags."
    keep_singleton: "By default, if only one read in a pair aligns (a singleton)\\nthen it's ignored."
    keep_discordant: "default, paired-end alignments with the properly-paired bit\\nunset in the FLAG field are ignored. Note that the definition\\nof concordant and discordant is based on your aligner\\nsettings."
    ignore_flags: "By default, any alignment marked as secondary (bit 0x100),\\nfailing QC (bit 0x200), a PCR/optical duplicate (0x400) or\\nsupplemental (0x800) is ignored. This equates to a value of\\n0xF00 or 3840 in decimal. If you would like to change that,\\nyou can specify a new value here.\\nignored. Specifying this causes them to be included."
    require_flags: "Require each alignment to have all bits in this value\\npresent, or else the alignment is ignored. This is equivalent\\nto the -f option in samtools. The default is 0, which\\nincludes all alignments."
    no_cpg: "Do not output CpG context methylation metrics"
    chg: "Output CHG context methylation metrics"
    chh: "Output CHH context methylation metrics"
    fraction: "Extract fractional methylation (only) at each position. This\\nproduces a file with a .meth.bedGraph extension."
    counts: "Extract base counts (only) at each position. This produces a\\nfile with a .counts.bedGraph extension."
    log_it: "Extract logit(M/(M+U)) (only) at each position. This produces\\na file with a .logit.bedGraph extension."
    min_opposite_depth: "If you would like to exclude sites that likely contain\\nSNPs, then specifying a value greater than 0 here will\\nindicate the minimum depth required on the strand opposite of\\na C to look for A/T/C bases. The fraction of these necessary\\nto exclude a position from methylation extraction is specified\\nby the --maxVariantFrac parameter. The default is 0, which\\nmeans that no positions will be excluded. Note that the -p and\\n-q apply here as well. Note further that if you use\\n--mergeContext that a merged site will be excluded if either\\nof its individual Cs would be excluded."
    max_variant_frac: "maximum fraction of A/T/C base calls on the strand\\nopposite of a C to allow before a position is declared a\\nvariant (thereby being excluded from output). The default is\\n0.0. See also --minOppositeDepth."
    methyl_kit: "Output in the format required by methylKit. Note that this is\\nincompatible with --mergeContext, --fraction and --counts."
    cytosine_report: "A per-base exhaustive report comparable to that produced\\nwith the same option in Bismark's methylation extractor. The\\noutput is a tab-separated file with the following columns:\\nchromosome, position (1-based), strand, number of alignments\\nsupporting methylation, number of alignments supporting\\nunmethylation, CG/CHG/CHH, trinucleotide context. This is not\\ncompatible with --fraction, --counts, --methylKit, or\\n--mergeContext. The produces a single file with a\\n.cytosine_report.txt extension. Note that even bases with no\\ncoverage will be included in the output."
    ot: ",INT,INT,INT Inclusion bounds for methylation calls from reads/pairs\\noriginating from the original top strand. Suggested values can\\nbe obtained from the MBias program. Each integer represents a\\n1-based position on a read. For example --OT A,B,C,D\\ntranslates to, \\\"Include calls at positions from A through B\\non read #1 and C through D on read #2\\\". If a 0 is used a any\\nposition then that is translated to mean start/end of the\\nalignment, as appropriate. For example, --OT 5,0,0,0 would\\ninclude all but the first 4 bases on read #1. Users are\\nstrongly advised to consult a methylation bias plot, for\\nexample by using the MBias program."
    ob: ",INT,INT,INT"
    c_tot: ",INT,INT,INT"
    cto_b: ",INT,INT,INT As with --OT, but for the original bottom, complementary\\nto the original top, and complementary to the original bottom\\nstrands, respectively."
    not: ",INT,INT,INT Like --OT, but always exclude INT bases from a given end\\nfrom inclusion,regardless of the length of an alignment. This\\nis useful in cases where reads may have already been trimmed\\nto different lengths, but still none-the-less contain a\\ncertain length bias at one or more ends."
    nob: ",INT,INT,INT"
    nc_tot: ",INT,INT,INT"
    nc_tob: ",INT,INT,INT As with --nOT, but for the original bottom,\\ncomplementary to the original top, and complementary to the\\noriginal bottom strands, respectively."
    ref_dot_fa: ""
    sorted_alignments_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_keep_strand = "${in_keep_strand}"
    File out_op_ref = "${in_op_ref}"
  }
}