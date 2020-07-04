version 1.0

task Som.py {
  input {
    String? output_file_prefix
    String? location
    String? restrict_regions
    String? target_regions
    String? false_positives
    String? ambiguous
    Boolean? ambi_fp
    Boolean? no_ambi_fp
    Boolean? count_unk
    Boolean? no_count_unk
    Boolean? explain_ambiguous
    String? reference
    String? scratch_prefix
    Boolean? keep_scratch
    Boolean? continue
    Boolean? include_non_pass
    String? feature_table
    Boolean? happy_stats
    String? bam
    Boolean? normalize_truth
    Boolean? normalize_query
    Boolean? normalize_all
    Boolean? add_chr_prefix
    Boolean? add_chr_true
    Boolean? same__fixchrtruth
    Boolean? same__fixchrquery
    Boolean? no_fix_chr_truth
    Boolean? no_fix_chr_query
    Boolean? no_order_check
    String? roc
    Boolean? bin_afs
    String? af_binsize
    String? af_truth
    String? af_query
    Boolean? count_filtered_fn
    String? fp_region_size
    String? ci_level
    String? log_file
    Boolean? verbose
    Boolean? quiet
    String truth
    String query
  }
  command <<<
    som.py \
      ~{truth} \
      ~{query} \
      ~{if defined(output_file_prefix) then ("--output " +  '"' + output_file_prefix + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(restrict_regions) then ("--restrict-regions " +  '"' + restrict_regions + '"') else ""} \
      ~{if defined(target_regions) then ("--target-regions " +  '"' + target_regions + '"') else ""} \
      ~{if defined(false_positives) then ("--false-positives " +  '"' + false_positives + '"') else ""} \
      ~{if defined(ambiguous) then ("--ambiguous " +  '"' + ambiguous + '"') else ""} \
      ~{true="--ambi-fp" false="" ambi_fp} \
      ~{true="--no-ambi-fp" false="" no_ambi_fp} \
      ~{true="--count-unk" false="" count_unk} \
      ~{true="--no-count-unk" false="" no_count_unk} \
      ~{true="--explain_ambiguous" false="" explain_ambiguous} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(scratch_prefix) then ("--scratch-prefix " +  '"' + scratch_prefix + '"') else ""} \
      ~{true="--keep-scratch" false="" keep_scratch} \
      ~{true="--continue" false="" continue} \
      ~{true="--include-nonpass" false="" include_non_pass} \
      ~{if defined(feature_table) then ("--feature-table " +  '"' + feature_table + '"') else ""} \
      ~{true="--happy-stats" false="" happy_stats} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{true="--normalize-truth" false="" normalize_truth} \
      ~{true="--normalize-query" false="" normalize_query} \
      ~{true="--normalize-all" false="" normalize_all} \
      ~{true="--fixchr-truth" false="" add_chr_prefix} \
      ~{true="--fixchr-query" false="" add_chr_true} \
      ~{true="--fix-chr-truth" false="" same__fixchrtruth} \
      ~{true="--fix-chr-query" false="" same__fixchrquery} \
      ~{true="--no-fixchr-truth" false="" no_fix_chr_truth} \
      ~{true="--no-fixchr-query" false="" no_fix_chr_query} \
      ~{true="--no-order-check" false="" no_order_check} \
      ~{if defined(roc) then ("--roc " +  '"' + roc + '"') else ""} \
      ~{true="--bin-afs" false="" bin_afs} \
      ~{if defined(af_binsize) then ("--af-binsize " +  '"' + af_binsize + '"') else ""} \
      ~{if defined(af_truth) then ("--af-truth " +  '"' + af_truth + '"') else ""} \
      ~{if defined(af_query) then ("--af-query " +  '"' + af_query + '"') else ""} \
      ~{true="--count-filtered-fn" false="" count_filtered_fn} \
      ~{if defined(fp_region_size) then ("--fp-region-size " +  '"' + fp_region_size + '"') else ""} \
      ~{if defined(ci_level) then ("--ci-level " +  '"' + ci_level + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    output_file_prefix: "Output file prefix for statistics and feature table (when selected)"
    location: "Location for bcftools view (e.g. chr1)"
    restrict_regions: "Restrict analysis to given (sparse) regions (using -R in bcftools)."
    target_regions: "Restrict analysis to given (dense) regions (using -T in bcftools)."
    false_positives: "False-positive region bed file to distinguish UNK from FP"
    ambiguous: "Ambiguous region bed file(s) to distinguish from FP (e.g. variant only observed in some replicates)"
    ambi_fp: "Use FP calls from ambiguous region files also."
    no_ambi_fp: "Do not use FP calls from ambiguous region files also."
    count_unk: "Assume the truth set covers the whole genome and only count FPs in regions specified by the truth VCF or ambiguous/false-positive regions."
    no_count_unk: "Do not use FP calls from ambiguous region files also."
    explain_ambiguous: "print a table giving the number of ambiguous events per category"
    reference: "Specify a reference file."
    scratch_prefix: "Filename prefix for scratch report output."
    keep_scratch: "Filename prefix for scratch report output."
    continue: "Continue from scratch space (i.e. use VCFs in there if they already exist)."
    include_non_pass: "Use to include failing variants in comparison."
    feature_table: "Select a feature table to output."
    happy_stats: "Generate summary.csv."
    bam: "pass one or more BAM files for feature table extraction"
    normalize_truth: "Enable running of bcftools norm on the truth file."
    normalize_query: "Enable running of bcftools norm on the query file."
    normalize_all: "Enable running of bcftools norm on both truth and query file."
    add_chr_prefix: "Add chr prefix to truth file (default: true)."
    add_chr_true: "Add chr prefix to query file (default: true)."
    same__fixchrtruth: "Same as --fixchr-truth."
    same__fixchrquery: "Same as --fixchr-query."
    no_fix_chr_truth: "Disable chr replacement for truth (default: false)."
    no_fix_chr_query: "Add chr prefix to query file (default: false)."
    no_order_check: "Disable checking the order of TP features (dev feature)."
    roc: "Create a ROC-style table. This is caller specific - this will override the --feature-table switch!"
    bin_afs: "Stratify into different AF buckets. This needs to have features available for getting the AF both in truth and query variants."
    af_binsize: "Bin size for AF binning (should be < 1). Multiple bin sizes can be specified using a comma, e.g. 0.1,0.2,0.5,0.2 will split at 0.1, 0.3, 0.8 and 1.0."
    af_truth: "Feature name to use for retrieving AF for truth variants (TP and FN)"
    af_query: "Feature name to use for retrieving AF for query variants (FP/UNK/AMBI)"
    count_filtered_fn: "Count filtered vs. absent FN numbers. This requires the -P switch (to use all variants) and either the --feature-table or --roc switch."
    fp_region_size: "How to obtain the normalisation constant for FP rate. By default, this will use the FP region bed file size when using --count-unk and the size of all reference contigs that overlap with the location specified in -l otherwise. This can be overridden with: 1) a number of nucleotides, or 2) \"auto\" to use the lengths of all contigs that have calls. The resulting value is used as fp.region.size."
    ci_level: "Confidence level for precision/recall confidence intervals (default: 0.95)"
    log_file: "Write logging information into file rather than to stderr"
    verbose: "Raise logging level from warning to info."
    quiet: "Set logging level to output errors only."
    truth: "Truth VCF file"
    query: "Query VCF file"
  }
}