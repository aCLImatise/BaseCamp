version 1.0

task ICountAnnotate {
  input {
    Boolean? subtype
    Boolean? excluded_types_default
    Boolean? _stdoutlog_threshold
    Boolean? _filelog_threshold
    Boolean? _filelogpath_path
    Boolean? _file_store
    String annotation
    String sites
    String sites_annotated
  }
  command <<<
    iCount annotate \
      ~{annotation} \
      ~{sites} \
      ~{sites_annotated} \
      ~{if (subtype) then "--subtype" else ""} \
      ~{if (excluded_types_default) then "-e" else ""} \
      ~{if (_stdoutlog_threshold) then "-S" else ""} \
      ~{if (_filelog_threshold) then "-F" else ""} \
      ~{if (_filelogpath_path) then "-P" else ""} \
      ~{if (_file_store) then "-M" else ""}
  >>>
  parameter_meta {
    subtype: "Subtype (default: biotype)"
    excluded_types_default: "[ ...], --excluded_types  [ ...]\\nExcluded types (default: None)"
    _stdoutlog_threshold: ", --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    _filelog_threshold: ", --file_log       Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    _filelogpath_path: ", --file_logpath   Path to log file."
    _file_store: ", --results_file   File into which to store Metrics."
    annotation: "Path to annotation file (should be GTF and include `subtype` attribute)"
    sites: "Path to input BED6 file listing all cross-linked sites"
    sites_annotated: "Path to output BED6 file listing annotated cross-linked sites"
  }
  output {
    File out_stdout = stdout()
  }
}