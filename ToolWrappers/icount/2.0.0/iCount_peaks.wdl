version 1.0

task ICountPeaks {
  input {
    File? scores
    Boolean? features
    Boolean? group_by
    Boolean? merge_features
    Boolean? half_window
    Boolean? fdr
    Boolean? perms
    Boolean? rnd_seed
    Boolean? report_progress
    Boolean? stdout_log
    Boolean? file_log
    Boolean? file_log_path
    Boolean? results_file
    String annotation
    String sites
    String peaks
  }
  command <<<
    iCount peaks \
      ~{annotation} \
      ~{sites} \
      ~{peaks} \
      ~{if (scores) then "--scores" else ""} \
      ~{if (features) then "--features" else ""} \
      ~{if (group_by) then "--group_by" else ""} \
      ~{if (merge_features) then "--merge_features" else ""} \
      ~{if (half_window) then "--half_window" else ""} \
      ~{if (fdr) then "--fdr" else ""} \
      ~{if (perms) then "--perms" else ""} \
      ~{if (rnd_seed) then "--rnd_seed" else ""} \
      ~{if (report_progress) then "--report_progress" else ""} \
      ~{if (stdout_log) then "--stdout_log" else ""} \
      ~{if (file_log) then "--file_log" else ""} \
      ~{if (file_log_path) then "--file_logpath" else ""} \
      ~{if (results_file) then "--results_file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    scores: "File name for \\\"scores\\\" output. File reports all cross-link events,\\nindependent from their FDR score It should have .tsv, .csv, .txt or .gz\\nextension (default: None)"
    features: "[ ...]    Features from annotation to consider. If None, ['gene'] is used.\\nSometimes, it is advised to use ['gene', 'intergenic'] (default: None)"
    group_by: "Attribute by which cross-link positions are grouped (default: gene_id)"
    merge_features: "Treat all features as one when grouping. Has no effect when only one\\nfeature is given in features parameter (default: False)"
    half_window: "Half-window size (default: 3)"
    fdr: "FDR threshold (default: 0.05)"
    perms: "Number of permutations when calculating random distribution (default: 100)"
    rnd_seed: "Seed for random generator (default: 42)"
    report_progress: "Report analysis progress (default: False)"
    stdout_log: "Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    file_log: "Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    file_log_path: "Path to log file."
    results_file: "File into which to store Metrics."
    annotation: "Annotation file in GTF format, obtained from \\\"iCount segment\\\" command"
    sites: "File with cross-links in BED6 format"
    peaks: "File name for \\\"peaks\\\" output. File reports positions with significant\\nnumber of cross-link events. It should have .bed or .bed.gz extension"
  }
  output {
    File out_stdout = stdout()
    File out_scores = "${in_scores}"
  }
}