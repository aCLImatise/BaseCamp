version 1.0

task Qfypy {
  input {
    String? adjust_conf_regions
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
    File? report_prefix
    File? reference
    Int? threads
    File? log_file
    Boolean? quiet
    Boolean? v
    String stderr
    String header_dot
  }
  command <<<
    qfy_py \
      ~{stderr} \
      ~{header_dot} \
      ~{if defined(adjust_conf_regions) then ("--adjust-conf-regions " +  '"' + adjust_conf_regions + '"') else ""} \
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
      ~{if defined(report_prefix) then ("--report-prefix " +  '"' + report_prefix + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hap.py:0.3.13--py27h5c5a3ab_0"
  }
  parameter_meta {
    adjust_conf_regions: "When hap.py was run with --adjust-conf-regions, on the\\noriginal VCF, then quantify needs the truthset VCF in\\norder to correctly reproduce the results. This switch\\nallows us to pass the truth VCF into quantify."
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
    report_prefix: "Filename prefix for report output."
    reference: "Specify a reference file."
    threads: "Number of threads to use."
    log_file: "Write logging information into file rather than to"
    quiet: "Set logging level to output errors only."
    v: ""
    stderr: "--bcf                 Use BCF internally. This is the default when the input"
    header_dot: "--verbose             Raise logging level from warning to info."
  }
  output {
    File out_stdout = stdout()
    File out_no_json = "${in_no_json}"
    File out_report_prefix = "${in_report_prefix}"
  }
}