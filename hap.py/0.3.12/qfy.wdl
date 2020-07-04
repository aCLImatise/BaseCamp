version 1.0

task Qfy.py {
  input {
    String? adjust_conf_regions
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
    String? report_prefix
    String? reference
    String? threads
    String? log_file
    Boolean? bcf
    Boolean? verbose
    Boolean? quiet
    Boolean? v
    String in_vcf
  }
  command <<<
    qfy.py \
      ~{in_vcf} \
      ~{if defined(adjust_conf_regions) then ("--adjust-conf-regions " +  '"' + adjust_conf_regions + '"') else ""} \
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
      ~{if defined(report_prefix) then ("--report-prefix " +  '"' + report_prefix + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--bcf" false="" bcf} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    adjust_conf_regions: "When hap.py was run with --adjust-conf-regions, on the original VCF, then quantify needs the truthset VCF in order to correctly reproduce the results. This switch allows us to pass the truth VCF into quantify."
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
    report_prefix: "Filename prefix for report output."
    reference: "Specify a reference file."
    threads: "Number of threads to use."
    log_file: "Write logging information into file rather than to stderr"
    bcf: "Use BCF internally. This is the default when the input file is in BCF format already. Using BCF can speed up temp file access, but may fail for VCF files that have broken headers or records that don't comply with the header."
    verbose: "Raise logging level from warning to info."
    quiet: "Set logging level to output errors only."
    v: ""
    in_vcf: "Comparison intermediate VCF file to quantify (two column TRUTH/QUERY format)"
  }
}