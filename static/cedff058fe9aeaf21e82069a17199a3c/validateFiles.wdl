version 1.0

task ValidateFiles {
  input {
    String? you_extra_fields
    Boolean? tab
    String? chrom_db
    File? chrom_info
    Boolean? color_space
    Boolean? is_sorted
    Boolean? do_report
    Boolean? version
    File? genome
    Boolean? n_match
    String? match_first
    String? mismatches
    String? mismatch_total_quality
    Boolean? mm_per_pair
    String? mm_check_one_inn
    Boolean? allow_other
    Boolean? allow_bad_length
    Boolean? complement_minus
    String? bam_percent
    Boolean? private_data
    Boolean? options
    File? type
    String broad_peak
    String narrow_peak
    String gapped_peak
    String bed_graph
    String rcc
    String id_at
  }
  command <<<
    validateFiles \
      ~{broad_peak} \
      ~{narrow_peak} \
      ~{gapped_peak} \
      ~{bed_graph} \
      ~{rcc} \
      ~{id_at} \
      ~{if defined(you_extra_fields) then ("-as " +  '"' + you_extra_fields + '"') else ""} \
      ~{true="-tab" false="" tab} \
      ~{if defined(chrom_db) then ("-chromDb " +  '"' + chrom_db + '"') else ""} \
      ~{if defined(chrom_info) then ("-chromInfo " +  '"' + chrom_info + '"') else ""} \
      ~{true="-colorSpace" false="" color_space} \
      ~{true="-isSorted" false="" is_sorted} \
      ~{true="-doReport" false="" do_report} \
      ~{true="-version" false="" version} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{true="-nMatch" false="" n_match} \
      ~{if defined(match_first) then ("-matchFirst " +  '"' + match_first + '"') else ""} \
      ~{if defined(mismatches) then ("-mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if defined(mismatch_total_quality) then ("-mismatchTotalQuality " +  '"' + mismatch_total_quality + '"') else ""} \
      ~{true="-mmPerPair" false="" mm_per_pair} \
      ~{if defined(mm_check_one_inn) then ("-mmCheckOneInN " +  '"' + mm_check_one_inn + '"') else ""} \
      ~{true="-allowOther" false="" allow_other} \
      ~{true="-allowBadLength" false="" allow_bad_length} \
      ~{true="-complementMinus" false="" complement_minus} \
      ~{if defined(bam_percent) then ("-bamPercent " +  '"' + bam_percent + '"') else ""} \
      ~{true="-privateData" false="" private_data} \
      ~{true="-options" false="" options} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""}
  >>>
  parameter_meta {
    you_extra_fields: "If you have extra \"bedPlus\" fields, it's great to put a definition of each field in a row in AutoSql format here. Applies to bed-related types."
    tab: "If set, expect fields to be tab separated, normally expects white space separator. Applies to bed-related types."
    chrom_db: "Specify DB containing chromInfo table to validate chrom names and sizes"
    chrom_info: "Specify chromInfo file to validate chrom names and sizes"
    color_space: "Sequences include colorspace values [0-3] (can be used  with formats such as tagAlign and pairedTagAlign)"
    is_sorted: "Input is sorted by chrom, only affects types tagAlign and pairedTagAlign"
    do_report: "Output report in filename.report"
    version: "Print version"
    genome: "REQUIRED to validate sequence mappings match the genome specified in the .2bit file. (BAM, tagAlign, pairedTagAlign)"
    n_match: "N's do not count as a mismatch"
    match_first: "Only check the first N bases of the sequence"
    mismatches: "Maximum number of mismatches in sequence (or read pair) "
    mismatch_total_quality: "Maximum total quality score at mismatching positions"
    mm_per_pair: "Check either pair dont exceed mismatch count if validating pairedTagAlign files (default is the total for the pair)"
    mm_check_one_inn: "Check mismatches in only one in 'n' lines (default=1, all)"
    allow_other: "Allow chromosomes that aren't native in BAM's"
    allow_bad_length: "Allow chromosomes that have the wrong length in BAM"
    complement_minus: "Complement the query sequence on the minus strand (for testing BAM)"
    bam_percent: "Percentage of BAM alignments that must be compliant"
    private_data: "Private data so empty sequence is tolerated"
    options: ""
    type: ""
    broad_peak: ": ENCODE Peak formats"
    narrow_peak: "These are specialized bedN+P formats."
    gapped_peak: "See http://genomewiki.soe.ucsc.edu/EncodeDCC/index.php/File_Formats"
    bed_graph: ":  BED Graph"
    rcc: ":  NanoString RCC"
    id_at: ":  Illumina IDAT"
  }
}