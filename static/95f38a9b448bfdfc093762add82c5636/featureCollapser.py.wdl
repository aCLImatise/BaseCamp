version 1.0

task FeatureCollapserpy {
  input {
    String? threads_to_run
    File? tsv
    String? delimiter
    Int? group_on
    File? file_write_results
    Boolean? substring
    String? summary_col
    String? summary_col_func
    String? summary_col_delimiter
    Boolean? strict
    Boolean? merge
    Boolean? case_sensitive
    String name_dot
  }
  command <<<
    featureCollapser_py \
      ~{name_dot} \
      ~{if defined(threads_to_run) then ("-p " +  '"' + threads_to_run + '"') else ""} \
      ~{if defined(tsv) then ("--tsv " +  '"' + tsv + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(group_on) then ("--group-on " +  '"' + group_on + '"') else ""} \
      ~{if (file_write_results) then "-o" else ""} \
      ~{if (substring) then "--substring" else ""} \
      ~{if defined(summary_col) then ("--summary-col " +  '"' + summary_col + '"') else ""} \
      ~{if defined(summary_col_func) then ("--summary-col-func " +  '"' + summary_col_func + '"') else ""} \
      ~{if defined(summary_col_delimiter) then ("--summary-col-delimiter " +  '"' + summary_col_delimiter + '"') else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if (case_sensitive) then "--case-sensitive" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads_to_run: "Threads to run"
    tsv: "The delimited file."
    delimiter: "The delimiter for fields."
    group_on: "The column of interest (default: 1). Can be a column"
    file_write_results: "[OUT], --out [OUT]\\nThe file to write results to. Leave blank for stdout,"
    substring: "If set, merge features by partial matches (such as\\ncollapsing peptides into larger peptides)"
    summary_col: "The column to apply a function to (if you want to\\ncombine fields, sum fields, etc.)."
    summary_col_func: "The function to apply to grouped entries in\\nmodification columns. Options: concat, mean, median,\\nvar, std, sum, count"
    summary_col_delimiter: "If the summary column has a delimiter, such as a ; for\\nmultiple proteins."
    strict: "For numeric operations, fail if types are incorrect\\n(converting NA to a float for instance)."
    merge: "Merge together identical entries."
    case_sensitive: "Treat peptides as case-sensitive (ie separate modified\\npeptides)\\n"
    name_dot: "--header HEADER       The number of headers lines (default: 1)."
  }
  output {
    File out_stdout = stdout()
    File out_file_write_results = "${in_file_write_results}"
  }
}