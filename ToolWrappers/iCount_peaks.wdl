version 1.0

task ICountPeaks {
  input {
    File? scores
    Boolean? features
    Boolean? _groupby_attribute
    Boolean? merge_features
    Boolean? half_window
    Boolean? fdr
    Boolean? _perms_number
    Boolean? rnd
    Boolean? report_progress
    Boolean? _stdoutlog_threshold
    Boolean? _filelog_threshold
    Boolean? _filelogpath_path
    Boolean? _file_store
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
      ~{if (_groupby_attribute) then "-g" else ""} \
      ~{if (merge_features) then "--merge_features" else ""} \
      ~{if (half_window) then "--half_window" else ""} \
      ~{if (fdr) then "--fdr" else ""} \
      ~{if (_perms_number) then "-p" else ""} \
      ~{if (rnd) then "-rnd" else ""} \
      ~{if (report_progress) then "--report_progress" else ""} \
      ~{if (_stdoutlog_threshold) then "-S" else ""} \
      ~{if (_filelog_threshold) then "-F" else ""} \
      ~{if (_filelogpath_path) then "-P" else ""} \
      ~{if (_file_store) then "-M" else ""}
  >>>
  parameter_meta {
    scores: "File name for \\\"scores\\\" output. File reports all cross-link events,\\nindependent from their FDR score It should have .tsv, .csv, .txt or .gz\\nextension (default: None)"
    features: "[ ...]    Features from annotation to consider. If None, ['gene'] is used.\\nSometimes, it is advised to use ['gene', 'intergenic'] (default: None)"
    _groupby_attribute: ", --group_by       Attribute by which cross-link positions are grouped (default: gene_id)"
    merge_features: "Treat all features as one when grouping. Has no effect when only one\\nfeature is given in features parameter (default: False)"
    half_window: "Half-window size (default: 3)"
    fdr: "FDR threshold (default: 0.05)"
    _perms_number: ", --perms          Number of permutations when calculating random distribution (default: 100)"
    rnd: ", --rnd_seed     Seed for random generator (default: 42)"
    report_progress: "Report analysis progress (default: False)"
    _stdoutlog_threshold: ", --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    _filelog_threshold: ", --file_log       Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    _filelogpath_path: ", --file_logpath   Path to log file."
    _file_store: ", --results_file   File into which to store Metrics."
    annotation: "Annotation file in GTF format, obtained from \\\"iCount segment\\\" command"
    sites: "File with cross-links in BED6 format"
    peaks: "File name for \\\"peaks\\\" output. File reports positions with significant\\nnumber of cross-link events. It should have .bed or .bed.gz extension"
  }
  output {
    File out_stdout = stdout()
    File out_scores = "${in_scores}"
  }
}