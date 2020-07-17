version 1.0

task Hap.py {
  input {
    String? reference
    String? report_prefix
    String? scratch_prefix
    Boolean? keep_scratch
    String? type
    String? false_positives
    String? stratification
    String? stratification_region
    Boolean? stratification_fix_chr
    Boolean? write_vcf
    Boolean? write_counts
    Boolean? no_write_counts
    Boolean? output_vtc
    Boolean? preserve_info
    String? roc
    Boolean? no_roc
    String? roc_regions
    String? roc_filter
    String? roc_delta
    String? ci_alpha
    Boolean? no_json
    String? location
    Boolean? pass_only
    String? filters_only
    String? restrict_regions
    String? target_regions
    Boolean? left_shift
    Boolean? no_left_shift
    Boolean? decompose
    Boolean? no_decompose
    Boolean? bcf_tools_norm
    Boolean? fix_chr
    Boolean? no_fix_chr
    Boolean? bcf
    Boolean? somatic
    String? set_gt
    Boolean? filter_non_ref
    Boolean? convert_gvc_f_truth
    Boolean? convert_gvc_f_query
    String? gender
    Boolean? preprocess_truth
    Boolean? use_filtered_truth
    String? preprocessing_window_size
    Boolean? adjust_conf_regions
    Boolean? no_adjust_conf_regions
    Boolean? no_haplotype_comparison
    String? window_size
    Int? x_cmp_enumeration_threshold
    String? x_cmp_expand_hap_blocks
    String? threads
    String? engine
    String? engine_vcf_eval_path
    String? engine_vcf_eval_template
    String? scmp_distance
    String? lose_match_distance
    String? log_file
    Boolean? verbose
    Boolean? quiet
    Boolean? v
    String haplotype
    String comparison
  }
  command <<<
    hap.py \
      ~{haplotype} \
      ~{comparison} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(report_prefix) then ("--report-prefix " +  '"' + report_prefix + '"') else ""} \
      ~{if defined(scratch_prefix) then ("--scratch-prefix " +  '"' + scratch_prefix + '"') else ""} \
      ~{true="--keep-scratch" false="" keep_scratch} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(false_positives) then ("--false-positives " +  '"' + false_positives + '"') else ""} \
      ~{if defined(stratification) then ("--stratification " +  '"' + stratification + '"') else ""} \
      ~{if defined(stratification_region) then ("--stratification-region " +  '"' + stratification_region + '"') else ""} \
      ~{true="--stratification-fixchr" false="" stratification_fix_chr} \
      ~{true="--write-vcf" false="" write_vcf} \
      ~{true="--write-counts" false="" write_counts} \
      ~{true="--no-write-counts" false="" no_write_counts} \
      ~{true="--output-vtc" false="" output_vtc} \
      ~{true="--preserve-info" false="" preserve_info} \
      ~{if defined(roc) then ("--roc " +  '"' + roc + '"') else ""} \
      ~{true="--no-roc" false="" no_roc} \
      ~{if defined(roc_regions) then ("--roc-regions " +  '"' + roc_regions + '"') else ""} \
      ~{if defined(roc_filter) then ("--roc-filter " +  '"' + roc_filter + '"') else ""} \
      ~{if defined(roc_delta) then ("--roc-delta " +  '"' + roc_delta + '"') else ""} \
      ~{if defined(ci_alpha) then ("--ci-alpha " +  '"' + ci_alpha + '"') else ""} \
      ~{true="--no-json" false="" no_json} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{true="--pass-only" false="" pass_only} \
      ~{if defined(filters_only) then ("--filters-only " +  '"' + filters_only + '"') else ""} \
      ~{if defined(restrict_regions) then ("--restrict-regions " +  '"' + restrict_regions + '"') else ""} \
      ~{if defined(target_regions) then ("--target-regions " +  '"' + target_regions + '"') else ""} \
      ~{true="--leftshift" false="" left_shift} \
      ~{true="--no-leftshift" false="" no_left_shift} \
      ~{true="--decompose" false="" decompose} \
      ~{true="--no-decompose" false="" no_decompose} \
      ~{true="--bcftools-norm" false="" bcf_tools_norm} \
      ~{true="--fixchr" false="" fix_chr} \
      ~{true="--no-fixchr" false="" no_fix_chr} \
      ~{true="--bcf" false="" bcf} \
      ~{true="--somatic" false="" somatic} \
      ~{if defined(set_gt) then ("--set-gt " +  '"' + set_gt + '"') else ""} \
      ~{true="--filter-nonref" false="" filter_non_ref} \
      ~{true="--convert-gvcf-truth" false="" convert_gvc_f_truth} \
      ~{true="--convert-gvcf-query" false="" convert_gvc_f_query} \
      ~{if defined(gender) then ("--gender " +  '"' + gender + '"') else ""} \
      ~{true="--preprocess-truth" false="" preprocess_truth} \
      ~{true="--usefiltered-truth" false="" use_filtered_truth} \
      ~{if defined(preprocessing_window_size) then ("--preprocessing-window-size " +  '"' + preprocessing_window_size + '"') else ""} \
      ~{true="--adjust-conf-regions" false="" adjust_conf_regions} \
      ~{true="--no-adjust-conf-regions" false="" no_adjust_conf_regions} \
      ~{true="--no-haplotype-comparison" false="" no_haplotype_comparison} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(x_cmp_enumeration_threshold) then ("--xcmp-enumeration-threshold " +  '"' + x_cmp_enumeration_threshold + '"') else ""} \
      ~{if defined(x_cmp_expand_hap_blocks) then ("--xcmp-expand-hapblocks " +  '"' + x_cmp_expand_hap_blocks + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(engine) then ("--engine " +  '"' + engine + '"') else ""} \
      ~{if defined(engine_vcf_eval_path) then ("--engine-vcfeval-path " +  '"' + engine_vcf_eval_path + '"') else ""} \
      ~{if defined(engine_vcf_eval_template) then ("--engine-vcfeval-template " +  '"' + engine_vcf_eval_template + '"') else ""} \
      ~{if defined(scmp_distance) then ("--scmp-distance " +  '"' + scmp_distance + '"') else ""} \
      ~{if defined(lose_match_distance) then ("--lose-match-distance " +  '"' + lose_match_distance + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    reference: "Specify a reference file."
    report_prefix: "Filename prefix for report output."
    scratch_prefix: "Directory for scratch files."
    keep_scratch: "Filename prefix for scratch report output."
    type: "Annotation format in input VCF file."
    false_positives: "False positive / confident call regions (.bed or .bed.gz). Calls outside these regions will be labelled as UNK."
    stratification: "Stratification file list (TSV format -- first column is region name, second column is file name)."
    stratification_region: "Add single stratification region, e.g. --stratification-region TEST:test.bed"
    stratification_fix_chr: "Add chr prefix to stratification files if necessary"
    write_vcf: "Write an annotated VCF."
    write_counts: "Write advanced counts and metrics."
    no_write_counts: "Do not write advanced counts and metrics."
    output_vtc: "Write VTC field in the final VCF which gives the counts each position has contributed to."
    preserve_info: "When using XCMP, preserve and merge the INFO fields in truth and query. Useful for ROC computation."
    roc: "Select a feature to produce a ROC on (INFO feature, QUAL, GQX, ...)."
    no_roc: "Disable ROC computation and only output summary statistics for more concise output."
    roc_regions: "Select a list of regions to compute ROCs in. By default, only the '*' region will produce ROC output (aggregate variant counts)."
    roc_filter: "Select a filter to ignore when making ROCs."
    roc_delta: "Minimum spacing between ROC QQ levels."
    ci_alpha: "Confidence level for Jeffrey's CI for recall, precision and fraction of non-assessed calls."
    no_json: "Disable JSON file output."
    location: "Comma-separated list of locations [use naming after preprocessing], when not specified will use whole VCF."
    pass_only: "Keep only PASS variants."
    filters_only: "Specify a comma-separated list of filters to apply (by default all filters are ignored / passed on."
    restrict_regions: "Restrict analysis to given (sparse) regions (using -R in bcftools)."
    target_regions: "Restrict analysis to given (dense) regions (using -T in bcftools)."
    left_shift: "Left-shift variants safely."
    no_left_shift: "Do not left-shift variants safely."
    decompose: "Decompose variants into primitives. This results in more granular counts."
    no_decompose: "Do not decompose variants into primitives."
    bcf_tools_norm: "Enable preprocessing through bcftools norm -c x -D (requires external preprocessing to be switched on)."
    fix_chr: "Add chr prefix to VCF records where necessary (default: auto, attempt to match reference)."
    no_fix_chr: "Do not add chr prefix to VCF records (default: auto, attempt to match reference)."
    bcf: "Use BCF internally. This is the default when the input file is in BCF format already. Using BCF can speed up temp file access, but may fail for VCF files that have broken headers or records that don't comply with the header."
    somatic: "Assume the input file is a somatic call file and squash all columns into one, putting all FORMATs into INFO + use half genotypes (see also --set-gt). This will replace all sample columns and replace them with a single one."
    set_gt: "This is used to treat Strelka somatic files Possible values for this parameter: half / hemi / het / hom / half to assign one of the following genotypes to the resulting sample: 1 | 0/1 | 1/1 | ./1. This will replace all sample columns and replace them with a single one."
    filter_non_ref: "Remove any variants genotyped as <NON_REF>."
    convert_gvc_f_truth: "Convert the truth set from genome VCF format to a VCF before processing."
    convert_gvc_f_query: "Convert the query set from genome VCF format to a VCF before processing."
    gender: "Specify sex. This determines how haploid calls on chrX get treated: for male samples, all non-ref calls (in the truthset only when running through hap.py) are given a 1/1 genotype."
    preprocess_truth: "Preprocess truth file with same settings as query (default is to accept truth in original format)."
    use_filtered_truth: "Use filtered variant calls in truth file (by default, only PASS calls in the truth file are used)"
    preprocessing_window_size: "Preprocessing window size (variants further apart than that size are not expected to interfere)."
    adjust_conf_regions: "Adjust confident regions to include variant locations. Note this will only include variants that are included in the CONF regions already when viewing with bcftools; this option only makes sure insertions are padded correctly in the CONF regions (to capture these, both the base before and after must be contained in the bed file)."
    no_adjust_conf_regions: "Do not adjust confident regions for insertions."
    no_haplotype_comparison: "Disable haplotype comparison (only count direct GT matches as TP)."
    window_size: "Minimum distance between variants such that they fall into the same superlocus."
    x_cmp_enumeration_threshold: "Enumeration threshold / maximum number of sequences to enumerate per block."
    x_cmp_expand_hap_blocks: "Expand haplotype blocks by this many basepairs left and right."
    threads: "Number of threads to use."
    engine: "Comparison engine to use."
    engine_vcf_eval_path: "This parameter should give the path to the \"rtg\" executable. The default is rtg"
    engine_vcf_eval_template: "Vcfeval needs the reference sequence formatted in its own file format (SDF -- run rtg format -o ref.SDF ref.fa). You can specify this here to save time when running hap.py with vcfeval. If no SDF folder is specified, hap.py will create a temporary one."
    scmp_distance: "For distance-based matching (vcfeval and scmp), this is the distance between variants to use."
    lose_match_distance: "For distance-based matching (vcfeval and scmp), this is the distance between variants to use."
    log_file: "Write logging information into file rather than to stderr"
    verbose: "Raise logging level from warning to info."
    quiet: "Set logging level to output errors only."
    v: ""
    haplotype: ""
    comparison: ""
  }
}