version 1.0

task ICountSummary {
  input {
    Boolean? types_length_file
    Boolean? digits
    Boolean? subtype
    Boolean? types_listed_be
    Boolean? stdout_log
    Boolean? file_log
    Boolean? file_log_path
    Boolean? results_file
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
      ~{if (types_listed_be) then "-e" else ""} \
      ~{if (stdout_log) then "--stdout_log" else ""} \
      ~{if (file_log) then "--file_log" else ""} \
      ~{if (file_log_path) then "--file_logpath" else ""} \
      ~{if (results_file) then "--results_file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    types_length_file: "Path to file with lengths of each type (default: None)"
    digits: "Number of decimal places in results (default: 8)"
    subtype: "Name of attribute to be used as subtype (default: None)"
    types_listed_be: "[ ...], --excluded_types  [ ...]\\nTypes listed in 3rd column of GTF to be exclude from analysis (default: None)"
    stdout_log: "Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    file_log: "Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    file_log_path: "Path to log file."
    results_file: "File into which to store Metrics."
    annotation: "Path to annotation GTF file (should include subtype attribute)"
    sites: "Path to BED6 file listing cross-linked sites"
    summary: "Path to output tab-delimited file with summary statistics"
    fai: "Path to file with chromosome lengths"
  }
  output {
    File out_stdout = stdout()
  }
}