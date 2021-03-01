version 1.0

task Sdreport {
  input {
    Boolean? list_format_output
    Boolean? tab_format_tabulate
    Boolean? format_comma_delimited
    Boolean? summary_format_output
    Boolean? sup
    Boolean? id
    String? nh
    Float? old_score_field
    String? norm
  }
  command <<<
    sdreport \
      ~{if (list_format_output) then "-l" else ""} \
      ~{if (tab_format_tabulate) then "-t" else ""} \
      ~{if (format_comma_delimited) then "-c" else ""} \
      ~{if (summary_format_output) then "-s" else ""} \
      ~{if (sup) then "-sup" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if defined(nh) then ("-nh " +  '"' + nh + '"') else ""} \
      ~{if defined(old_score_field) then ("-o " +  '"' + old_score_field + '"') else ""} \
      ~{if defined(norm) then ("-norm " +  '"' + norm + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_format_output: "(list format) output all data fields for each record as processed"
    tab_format_tabulate: "(tab format) tabulate selected fields for each record as processed"
    format_comma_delimited: "(csv format) comma delimited output of selected fields for each record as processed"
    summary_format_output: "(summary format) output summary statistics for each unique value of ligand ID"
    sup: "(supplier format) tabulate supplier details (from Catalyst)"
    id: "<IDField> data field to use as ligand ID"
    nh: "'t output column headings in -t and -c formats"
    old_score_field: "old (v3.00) score field names as default columns in -t and -c formats, else use v4.00 field names"
    norm: "normalised score field names as default columns in -t and -c formats (normalised = score / #ligand heavy atoms)"
  }
  output {
    File out_stdout = stdout()
  }
}