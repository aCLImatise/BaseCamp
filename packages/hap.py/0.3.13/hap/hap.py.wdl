version 1.0

task Happy {
  input {
    File? reference
    File? report_prefix
    Directory? scratch_prefix
    File? keep_scratch
    String? type
    File? false_positives
    File? stratification
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
    File? no_json
    String? location
    Boolean? pass_only
    String? filters_only
    File? restrict_regions
    File? target_regions
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
    Boolean? convert_gvc_f_to_vcf
    String? gender
    Boolean? preprocess_truth
    Boolean? use_filtered_truth
    Int? preprocessing_window_size
    Boolean? adjust_conf_regions
    Boolean? no_adjust_conf_regions
    Boolean? no_haplotype_comparison
    Int? window_size
    Int? x_cmp_enumeration_threshold
    String? x_cmp_expand_hap_blocks
    Int? threads
    String? engine
    File? engine_vcf_eval_path
    File? engine_vcf_eval_template
    String? scmp_distance
    String? lose_match_distance
    File? log_file
    Boolean? quiet
    Boolean? v
    String stderr
  }
  command <<<
    hap_py \
      ~{stderr} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(report_prefix) then ("--report-prefix " +  '"' + report_prefix + '"') else ""} \
      ~{if defined(scratch_prefix) then ("--scratch-prefix " +  '"' + scratch_prefix + '"') else ""} \
      ~{if (keep_scratch) then "--keep-scratch" else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(false_positives) then ("--false-positives " +  '"' + false_positives + '"') else ""} \
      ~{if defined(stratification) then ("--stratification " +  '"' + stratification + '"') else ""} \
      ~{if defined(stratification_region) then ("--stratification-region " +  '"' + stratification_region + '"') else ""} \
      ~{if (stratification_fix_chr) then "--stratification-fixchr" else ""} \
      ~{if (write_vcf) then "--write-vcf" else ""} \
      ~{if (write_counts) then "--write-counts" else ""} \
      ~{if (no_write_counts) then "--no-write-counts" else ""} \
      ~{if (output_vtc) then "--output-vtc" else ""} \
      ~{if (preserve_info) then "--preserve-info" else ""} \
      ~{if defined(roc) then ("--roc " +  '"' + roc + '"') else ""} \
      ~{if (no_roc) then "--no-roc" else ""} \
      ~{if defined(roc_regions) then ("--roc-regions " +  '"' + roc_regions + '"') else ""} \
      ~{if defined(roc_filter) then ("--roc-filter " +  '"' + roc_filter + '"') else ""} \
      ~{if defined(roc_delta) then ("--roc-delta " +  '"' + roc_delta + '"') else ""} \
      ~{if defined(ci_alpha) then ("--ci-alpha " +  '"' + ci_alpha + '"') else ""} \
      ~{if (no_json) then "--no-json" else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if (pass_only) then "--pass-only" else ""} \
      ~{if defined(filters_only) then ("--filters-only " +  '"' + filters_only + '"') else ""} \
      ~{if defined(restrict_regions) then ("--restrict-regions " +  '"' + restrict_regions + '"') else ""} \
      ~{if defined(target_regions) then ("--target-regions " +  '"' + target_regions + '"') else ""} \
      ~{if (left_shift) then "--leftshift" else ""} \
      ~{if (no_left_shift) then "--no-leftshift" else ""} \
      ~{if (decompose) then "--decompose" else ""} \
      ~{if (no_decompose) then "--no-decompose" else ""} \
      ~{if (bcf_tools_norm) then "--bcftools-norm" else ""} \
      ~{if (fix_chr) then "--fixchr" else ""} \
      ~{if (no_fix_chr) then "--no-fixchr" else ""} \
      ~{if (bcf) then "--bcf" else ""} \
      ~{if (somatic) then "--somatic" else ""} \
      ~{if defined(set_gt) then ("--set-gt " +  '"' + set_gt + '"') else ""} \
      ~{if (filter_non_ref) then "--filter-nonref" else ""} \
      ~{if (convert_gvc_f_to_vcf) then "--convert-gvcf-to-vcf" else ""} \
      ~{if defined(gender) then ("--gender " +  '"' + gender + '"') else ""} \
      ~{if (preprocess_truth) then "--preprocess-truth" else ""} \
      ~{if (use_filtered_truth) then "--usefiltered-truth" else ""} \
      ~{if defined(preprocessing_window_size) then ("--preprocessing-window-size " +  '"' + preprocessing_window_size + '"') else ""} \
      ~{if (adjust_conf_regions) then "--adjust-conf-regions" else ""} \
      ~{if (no_adjust_conf_regions) then "--no-adjust-conf-regions" else ""} \
      ~{if (no_haplotype_comparison) then "--no-haplotype-comparison" else ""} \
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
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hap.py:0.3.13--py27h5c5a3ab_0"
  }
  parameter_meta {
    reference: "Specify a reference file."
    report_prefix: "Filename prefix for report output."
    scratch_prefix: "Directory for scratch files."
    keep_scratch: "Filename prefix for scratch report output."
    type: "Annotation format in input VCF file."
    false_positives: "False positive / confident call regions (.bed or\\n.bed.gz). Calls outside these regions will be labelled\\nas UNK."
    stratification: "Stratification file list (TSV format -- first column\\nis region name, second column is file name)."
    stratification_region: "Add single stratification region, e.g.\\n--stratification-region TEST:test.bed"
    stratification_fix_chr: "Add chr prefix to stratification files if necessary"
    write_vcf: "Write an annotated VCF."
    write_counts: "Write advanced counts and metrics."
    no_write_counts: "Do not write advanced counts and metrics."
    output_vtc: "Write VTC field in the final VCF which gives the\\ncounts each position has contributed to."
    preserve_info: "When using XCMP, preserve and merge the INFO fields in\\ntruth and query. Useful for ROC computation."
    roc: "Select a feature to produce a ROC on (INFO feature,\\nQUAL, GQX, ...)."
    no_roc: "Disable ROC computation and only output summary\\nstatistics for more concise output."
    roc_regions: "Select a list of regions to compute ROCs in. By\\ndefault, only the '*' region will produce ROC output\\n(aggregate variant counts)."
    roc_filter: "Select a filter to ignore when making ROCs."
    roc_delta: "Minimum spacing between ROC QQ levels."
    ci_alpha: "Confidence level for Jeffrey's CI for recall,\\nprecision and fraction of non-assessed calls."
    no_json: "Disable JSON file output."
    location: "Comma-separated list of locations [use naming after\\npreprocessing], when not specified will use whole VCF."
    pass_only: "Keep only PASS variants."
    filters_only: "Specify a comma-separated list of filters to apply (by\\ndefault all filters are ignored / passed on."
    restrict_regions: "Restrict analysis to given (sparse) regions (using -R\\nin bcftools)."
    target_regions: "Restrict analysis to given (dense) regions (using -T\\nin bcftools)."
    left_shift: "Left-shift variants safely."
    no_left_shift: "Do not left-shift variants safely."
    decompose: "Decompose variants into primitives. This results in\\nmore granular counts."
    no_decompose: "Do not decompose variants into primitives."
    bcf_tools_norm: "Enable preprocessing through bcftools norm -c x -D\\n(requires external preprocessing to be switched on)."
    fix_chr: "Add chr prefix to VCF records where necessary\\n(default: auto, attempt to match reference)."
    no_fix_chr: "Do not add chr prefix to VCF records (default: auto,\\nattempt to match reference)."
    bcf: "Use BCF internally. This is the default when the input\\nfile is in BCF format already. Using BCF can speed up\\ntemp file access, but may fail for VCF files that have\\nbroken headers or records that don't comply with the\\nheader."
    somatic: "Assume the input file is a somatic call file and\\nsquash all columns into one, putting all FORMATs into\\nINFO + use half genotypes (see also --set-gt). This\\nwill replace all sample columns and replace them with\\na single one."
    set_gt: "This is used to treat Strelka somatic files Possible\\nvalues for this parameter: half / hemi / het / hom /\\nhalf to assign one of the following genotypes to the\\nresulting sample: 1 | 0/1 | 1/1 | ./1. This will\\nreplace all sample columns and replace them with a\\nsingle one."
    filter_non_ref: "Remove any variants genotyped as <NON_REF>."
    convert_gvc_f_to_vcf: "Convert the input set from genome VCF format to a VCF\\nbefore processing."
    gender: "Specify sex. This determines how haploid calls on chrX\\nget treated: for male samples, all non-ref calls (in\\nthe truthset only when running through hap.py) are\\ngiven a 1/1 genotype."
    preprocess_truth: "Preprocess truth file with same settings as query\\n(default is to accept truth in original format)."
    use_filtered_truth: "Use filtered variant calls in truth file (by default,\\nonly PASS calls in the truth file are used)"
    preprocessing_window_size: "Preprocessing window size (variants further apart than\\nthat size are not expected to interfere)."
    adjust_conf_regions: "Adjust confident regions to include variant locations.\\nNote this will only include variants that are included\\nin the CONF regions already when viewing with\\nbcftools; this option only makes sure insertions are\\npadded correctly in the CONF regions (to capture\\nthese, both the base before and after must be\\ncontained in the bed file)."
    no_adjust_conf_regions: "Do not adjust confident regions for insertions."
    no_haplotype_comparison: "Disable haplotype comparison (only count direct GT\\nmatches as TP)."
    window_size: "Minimum distance between variants such that they fall\\ninto the same superlocus."
    x_cmp_enumeration_threshold: "Enumeration threshold / maximum number of sequences to\\nenumerate per block."
    x_cmp_expand_hap_blocks: "Expand haplotype blocks by this many basepairs left\\nand right."
    threads: "Number of threads to use."
    engine: "Comparison engine to use."
    engine_vcf_eval_path: "This parameter should give the path to the \\\"rtg\\\"\\nexecutable. The default is rtg"
    engine_vcf_eval_template: "Vcfeval needs the reference sequence formatted in its\\nown file format (SDF -- run rtg format -o ref.SDF\\nref.fa). You can specify this here to save time when\\nrunning hap.py with vcfeval. If no SDF folder is\\nspecified, hap.py will create a temporary one."
    scmp_distance: "For distance-based matching (vcfeval and scmp), this\\nis the distance between variants to use."
    lose_match_distance: "For distance-based matching (vcfeval and scmp), this\\nis the distance between variants to use."
    log_file: "Write logging information into file rather than to"
    quiet: "Set logging level to output errors only."
    v: ""
    stderr: "--verbose             Raise logging level from warning to info."
  }
  output {
    File out_stdout = stdout()
    File out_report_prefix = "${in_report_prefix}"
    File out_keep_scratch = "${in_keep_scratch}"
    File out_no_json = "${in_no_json}"
  }
}