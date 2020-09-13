version 1.0

task ValidateFiles {
  input {
    Boolean? type
    String? you_extra_fields
    Boolean? tab
    String? chrom_db
    File? chrom_info
    Boolean? color_space
    Boolean? is_sorted
    File? do_report
    Boolean? version
    File? genome
    Boolean? n_match
    String? match_first
    Int? mismatches
    String? mismatch_total_quality
    Boolean? mm_per_pair
    Int? mm_check_one_inn
    Boolean? allow_other
    Boolean? allow_bad_length
    Boolean? complement_minus
    String? bam_percent
    Boolean? private_data
    Boolean? options
  }
  command <<<
    validateFiles \
      ~{if (type) then "-type" else ""} \
      ~{if defined(you_extra_fields) then ("-as " +  '"' + you_extra_fields + '"') else ""} \
      ~{if (tab) then "-tab" else ""} \
      ~{if defined(chrom_db) then ("-chromDb " +  '"' + chrom_db + '"') else ""} \
      ~{if defined(chrom_info) then ("-chromInfo " +  '"' + chrom_info + '"') else ""} \
      ~{if (color_space) then "-colorSpace" else ""} \
      ~{if (is_sorted) then "-isSorted" else ""} \
      ~{if (do_report) then "-doReport" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if (n_match) then "-nMatch" else ""} \
      ~{if defined(match_first) then ("-matchFirst " +  '"' + match_first + '"') else ""} \
      ~{if defined(mismatches) then ("-mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if defined(mismatch_total_quality) then ("-mismatchTotalQuality " +  '"' + mismatch_total_quality + '"') else ""} \
      ~{if (mm_per_pair) then "-mmPerPair" else ""} \
      ~{if defined(mm_check_one_inn) then ("-mmCheckOneInN " +  '"' + mm_check_one_inn + '"') else ""} \
      ~{if (allow_other) then "-allowOther" else ""} \
      ~{if (allow_bad_length) then "-allowBadLength" else ""} \
      ~{if (complement_minus) then "-complementMinus" else ""} \
      ~{if defined(bam_percent) then ("-bamPercent " +  '"' + bam_percent + '"') else ""} \
      ~{if (private_data) then "-privateData" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    type: "="
    you_extra_fields: "If you have extra \\\"bedPlus\\\" fields, it's great to put a definition\\nof each field in a row in AutoSql format here. Applies to bed-related types."
    tab: "If set, expect fields to be tab separated, normally\\nexpects white space separator. Applies to bed-related types."
    chrom_db: "Specify DB containing chromInfo table to validate chrom names\\nand sizes"
    chrom_info: "Specify chromInfo file to validate chrom names and sizes"
    color_space: "Sequences include colorspace values [0-3] (can be used\\nwith formats such as tagAlign and pairedTagAlign)"
    is_sorted: "Input is sorted by chrom, only affects types tagAlign and pairedTagAlign"
    do_report: "Output report in filename.report"
    version: "Print version"
    genome: "REQUIRED to validate sequence mappings match the genome specified\\nin the .2bit file. (BAM, tagAlign, pairedTagAlign)"
    n_match: "N's do not count as a mismatch"
    match_first: "Only check the first N bases of the sequence"
    mismatches: "Maximum number of mismatches in sequence (or read pair)"
    mismatch_total_quality: "Maximum total quality score at mismatching positions"
    mm_per_pair: "Check either pair dont exceed mismatch count if validating\\npairedTagAlign files (default is the total for the pair)"
    mm_check_one_inn: "Check mismatches in only one in 'n' lines (default=1, all)"
    allow_other: "Allow chromosomes that aren't native in BAM's"
    allow_bad_length: "Allow chromosomes that have the wrong length in BAM"
    complement_minus: "Complement the query sequence on the minus strand (for testing BAM)"
    bam_percent: "Percentage of BAM alignments that must be compliant"
    private_data: "Private data so empty sequence is tolerated"
    options: ""
  }
  output {
    File out_stdout = stdout()
    File out_do_report = "${in_do_report}"
  }
}