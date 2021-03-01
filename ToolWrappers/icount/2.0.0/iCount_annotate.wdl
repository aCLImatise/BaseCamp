version 1.0

task ICountAnnotate {
  input {
    Boolean? subtype
    Boolean? excluded_types_default
    Boolean? stdout_log
    Boolean? file_log
    Boolean? file_log_path
    Boolean? results_file
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
      ~{if (stdout_log) then "--stdout_log" else ""} \
      ~{if (file_log) then "--file_log" else ""} \
      ~{if (file_log_path) then "--file_logpath" else ""} \
      ~{if (results_file) then "--results_file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    subtype: "Subtype (default: biotype)"
    excluded_types_default: "[ ...], --excluded_types  [ ...]\\nExcluded types (default: None)"
    stdout_log: "Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    file_log: "Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    file_log_path: "Path to log file."
    results_file: "File into which to store Metrics."
    annotation: "Path to annotation file (should be GTF and include `subtype` attribute)"
    sites: "Path to input BED6 file listing all cross-linked sites"
    sites_annotated: "Path to output BED6 file listing annotated cross-linked sites"
  }
  output {
    File out_stdout = stdout()
  }
}