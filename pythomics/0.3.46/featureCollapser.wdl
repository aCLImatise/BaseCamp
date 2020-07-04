version 1.0

task FeatureCollapser.py {
  input {
    String? threads_to_run
    String? tsv
    String? delimiter
    String? group_on
    String? header
    Boolean? file_write_results
    Boolean? substring
    String? summary_col
    String? summary_col_func
    String? summary_col_delimiter
    Boolean? strict
    Boolean? merge
    Boolean? case_sensitive
  }
  command <<<
    featureCollapser.py \
      ~{if defined(threads_to_run) then ("-p " +  '"' + threads_to_run + '"') else ""} \
      ~{if defined(tsv) then ("--tsv " +  '"' + tsv + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(group_on) then ("--group-on " +  '"' + group_on + '"') else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{true="-o" false="" file_write_results} \
      ~{true="--substring" false="" substring} \
      ~{if defined(summary_col) then ("--summary-col " +  '"' + summary_col + '"') else ""} \
      ~{if defined(summary_col_func) then ("--summary-col-func " +  '"' + summary_col_func + '"') else ""} \
      ~{if defined(summary_col_delimiter) then ("--summary-col-delimiter " +  '"' + summary_col_delimiter + '"') else ""} \
      ~{true="--strict" false="" strict} \
      ~{true="--merge" false="" merge} \
      ~{true="--case-sensitive" false="" case_sensitive}
  >>>
  parameter_meta {
    threads_to_run: "Threads to run"
    tsv: "The delimited file."
    delimiter: "The delimiter for fields."
    group_on: "The column of interest (default: 1). Can be a column name."
    header: "The number of headers lines (default: 1)."
    file_write_results: "[OUT], --out [OUT] The file to write results to. Leave blank for stdout,"
    substring: "If set, merge features by partial matches (such as collapsing peptides into larger peptides)"
    summary_col: "The column to apply a function to (if you want to combine fields, sum fields, etc.)."
    summary_col_func: "The function to apply to grouped entries in modification columns. Options: concat, mean, median, var, std, sum, count"
    summary_col_delimiter: "If the summary column has a delimiter, such as a ; for multiple proteins."
    strict: "For numeric operations, fail if types are incorrect (converting NA to a float for instance)."
    merge: "Merge together identical entries."
    case_sensitive: "Treat peptides as case-sensitive (ie separate modified peptides)"
  }
}