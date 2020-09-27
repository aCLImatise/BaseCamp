version 1.0

task Sompy {
  input {
    File? output_file_prefix
    Int? location
    File? restrict_regions
    File? target_regions
    File? false_positives
    File? ambiguous
    Boolean? ambi_fp
    Boolean? no_ambi_fp
    Boolean? count_unk
    Boolean? no_count_unk
    Boolean? explain_ambiguous
    File? reference
    File? scratch_prefix
    File? keep_scratch
    Boolean? continue
    Boolean? include_non_pass
    String? feature_table
    Boolean? happy_stats
    String? bam
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
    Int? af_binsize
    String? af_truth
    String? af_query
    Boolean? count_filtered_fn
    Int? fp_region_size
    Float? ci_level
    File? log_file
    Boolean? quiet
    String truth
    String query
    String extraction
    String stderr
  }
  command <<<
    som_py \
      ~{truth} \
      ~{query} \
      ~{extraction} \
      ~{stderr} \
      ~{if defined(output_file_prefix) then ("--output " +  '"' + output_file_prefix + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(restrict_regions) then ("--restrict-regions " +  '"' + restrict_regions + '"') else ""} \
      ~{if defined(target_regions) then ("--target-regions " +  '"' + target_regions + '"') else ""} \
      ~{if defined(false_positives) then ("--false-positives " +  '"' + false_positives + '"') else ""} \
      ~{if defined(ambiguous) then ("--ambiguous " +  '"' + ambiguous + '"') else ""} \
      ~{if (ambi_fp) then "--ambi-fp" else ""} \
      ~{if (no_ambi_fp) then "--no-ambi-fp" else ""} \
      ~{if (count_unk) then "--count-unk" else ""} \
      ~{if (no_count_unk) then "--no-count-unk" else ""} \
      ~{if (explain_ambiguous) then "--explain_ambiguous" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(scratch_prefix) then ("--scratch-prefix " +  '"' + scratch_prefix + '"') else ""} \
      ~{if (keep_scratch) then "--keep-scratch" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if (include_non_pass) then "--include-nonpass" else ""} \
      ~{if defined(feature_table) then ("--feature-table " +  '"' + feature_table + '"') else ""} \
      ~{if (happy_stats) then "--happy-stats" else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if (normalize_query) then "--normalize-query" else ""} \
      ~{if (normalize_all) then "--normalize-all" else ""} \
      ~{if (add_chr_prefix) then "--fixchr-truth" else ""} \
      ~{if (add_chr_true) then "--fixchr-query" else ""} \
      ~{if (same__fixchrtruth) then "--fix-chr-truth" else ""} \
      ~{if (same__fixchrquery) then "--fix-chr-query" else ""} \
      ~{if (no_fix_chr_truth) then "--no-fixchr-truth" else ""} \
      ~{if (no_fix_chr_query) then "--no-fixchr-query" else ""} \
      ~{if (no_order_check) then "--no-order-check" else ""} \
      ~{if defined(roc) then ("--roc " +  '"' + roc + '"') else ""} \
      ~{if (bin_afs) then "--bin-afs" else ""} \
      ~{if defined(af_binsize) then ("--af-binsize " +  '"' + af_binsize + '"') else ""} \
      ~{if defined(af_truth) then ("--af-truth " +  '"' + af_truth + '"') else ""} \
      ~{if defined(af_query) then ("--af-query " +  '"' + af_query + '"') else ""} \
      ~{if (count_filtered_fn) then "--count-filtered-fn" else ""} \
      ~{if defined(fp_region_size) then ("--fp-region-size " +  '"' + fp_region_size + '"') else ""} \
      ~{if defined(ci_level) then ("--ci-level " +  '"' + ci_level + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    output_file_prefix: "Output file prefix for statistics and feature table\\n(when selected)"
    location: "Location for bcftools view (e.g. chr1)"
    restrict_regions: "Restrict analysis to given (sparse) regions (using -R\\nin bcftools)."
    target_regions: "Restrict analysis to given (dense) regions (using -T\\nin bcftools)."
    false_positives: "False-positive region bed file to distinguish UNK from\\nFP"
    ambiguous: "Ambiguous region bed file(s) to distinguish from FP\\n(e.g. variant only observed in some replicates)"
    ambi_fp: "Use FP calls from ambiguous region files also."
    no_ambi_fp: "Do not use FP calls from ambiguous region files also."
    count_unk: "Assume the truth set covers the whole genome and only\\ncount FPs in regions specified by the truth VCF or\\nambiguous/false-positive regions."
    no_count_unk: "Do not use FP calls from ambiguous region files also."
    explain_ambiguous: "print a table giving the number of ambiguous events\\nper category"
    reference: "Specify a reference file."
    scratch_prefix: "Filename prefix for scratch report output."
    keep_scratch: "Filename prefix for scratch report output."
    continue: "Continue from scratch space (i.e. use VCFs in there if\\nthey already exist)."
    include_non_pass: "Use to include failing variants in comparison."
    feature_table: "Select a feature table to output."
    happy_stats: "Generate summary.csv."
    bam: "pass one or more BAM files for feature table"
    normalize_query: "Enable running of bcftools norm on the query file."
    normalize_all: "Enable running of bcftools norm on both truth and\\nquery file."
    add_chr_prefix: "Add chr prefix to truth file (default: true)."
    add_chr_true: "Add chr prefix to query file (default: true)."
    same__fixchrtruth: "Same as --fixchr-truth."
    same__fixchrquery: "Same as --fixchr-query."
    no_fix_chr_truth: "Disable chr replacement for truth (default: false)."
    no_fix_chr_query: "Add chr prefix to query file (default: false)."
    no_order_check: "Disable checking the order of TP features (dev\\nfeature)."
    roc: "Create a ROC-style table. This is caller specific -\\nthis will override the --feature-table switch!"
    bin_afs: "Stratify into different AF buckets. This needs to have\\nfeatures available for getting the AF both in truth\\nand query variants."
    af_binsize: "Bin size for AF binning (should be < 1). Multiple bin\\nsizes can be specified using a comma, e.g.\\n0.1,0.2,0.5,0.2 will split at 0.1, 0.3, 0.8 and 1.0."
    af_truth: "Feature name to use for retrieving AF for truth\\nvariants (TP and FN)"
    af_query: "Feature name to use for retrieving AF for query\\nvariants (FP/UNK/AMBI)"
    count_filtered_fn: "Count filtered vs. absent FN numbers. This requires\\nthe -P switch (to use all variants) and either the\\n--feature-table or --roc switch."
    fp_region_size: "How to obtain the normalisation constant for FP rate.\\nBy default, this will use the FP region bed file size\\nwhen using --count-unk and the size of all reference\\ncontigs that overlap with the location specified in -l\\notherwise. This can be overridden with: 1) a number of\\nnucleotides, or 2) \\\"auto\\\" to use the lengths of all\\ncontigs that have calls. The resulting value is used\\nas fp.region.size."
    ci_level: "Confidence level for precision/recall confidence\\nintervals (default: 0.95)"
    log_file: "Write logging information into file rather than to"
    quiet: "Set logging level to output errors only."
    truth: "Truth VCF file"
    query: "Query VCF file"
    extraction: "--normalize-truth     Enable running of bcftools norm on the truth file."
    stderr: "--verbose             Raise logging level from warning to info."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
    File out_scratch_prefix = "${in_scratch_prefix}"
    File out_keep_scratch = "${in_keep_scratch}"
  }
}