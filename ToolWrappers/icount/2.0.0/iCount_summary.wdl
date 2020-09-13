version 1.0

task ICountSummary {
  input {
    Boolean? types_length_file
    Boolean? digits
    Boolean? subtype
    Boolean? types_listed_exclude
    Boolean? _stdoutlog_threshold
    Boolean? _filelog_threshold
    Boolean? _filelogpath_path
    Boolean? _file_store
    String annotation
    String sites
    String summary
    String fai
  }
  command <<<
    iCount summary \
      ~{annotation} \
      ~{sites} \
      ~{summary} \
      ~{fai} \
      ~{if (types_length_file) then "--types_length_file" else ""} \
      ~{if (digits) then "--digits" else ""} \
      ~{if (subtype) then "--subtype" else ""} \
      ~{if (types_listed_exclude) then "-e" else ""} \
      ~{if (_stdoutlog_threshold) then "-S" else ""} \
      ~{if (_filelog_threshold) then "-F" else ""} \
      ~{if (_filelogpath_path) then "-P" else ""} \
      ~{if (_file_store) then "-M" else ""}
  >>>
  parameter_meta {
    types_length_file: "Path to file with lengths of each type (default: None)"
    digits: "Number of decimal places in results (default: 8)"
    subtype: "Name of attribute to be used as subtype (default: None)"
    types_listed_exclude: "[ ...], --excluded_types  [ ...]\\nTypes listed in 3rd column of GTF to be exclude from analysis (default: None)"
    _stdoutlog_threshold: ", --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    _filelog_threshold: ", --file_log       Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    _filelogpath_path: ", --file_logpath   Path to log file."
    _file_store: ", --results_file   File into which to store Metrics."
    annotation: "Path to annotation GTF file (should include subtype attribute)"
    sites: "Path to BED6 file listing cross-linked sites"
    summary: "Path to output tab-delimited file with summary statistics"
    fai: "Path to file with chromosome lengths"
  }
  output {
    File out_stdout = stdout()
  }
}