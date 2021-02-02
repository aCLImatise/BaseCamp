version 1.0

task Sortuniqcountrank {
  input {
    Boolean? prefix_lines_number
    Boolean? only_print_duplicate
    Boolean? only_print_lines
    String? skip_first_n_fields
    String? skip_first_n_chars
    String? compare_n_characters
    Boolean? cdu
    String uniq
  }
  command <<<
    sort_uniq_count_rank \
      ~{uniq} \
      ~{if (prefix_lines_number) then "-c" else ""} \
      ~{if (only_print_duplicate) then "-d" else ""} \
      ~{if (only_print_lines) then "-u" else ""} \
      ~{if defined(skip_first_n_fields) then ("-f " +  '"' + skip_first_n_fields + '"') else ""} \
      ~{if defined(skip_first_n_chars) then ("-s " +  '"' + skip_first_n_chars + '"') else ""} \
      ~{if defined(compare_n_characters) then ("-w " +  '"' + compare_n_characters + '"') else ""} \
      ~{if (cdu) then "-cdu" else ""}
  >>>
  parameter_meta {
    prefix_lines_number: "Prefix lines by the number of occurrences"
    only_print_duplicate: "Only print duplicate lines"
    only_print_lines: "Only print unique lines"
    skip_first_n_fields: "Skip first N fields"
    skip_first_n_chars: "Skip first N chars (after any skipped fields)"
    compare_n_characters: "Compare N characters in line"
    cdu: ""
    uniq: ""
  }
  output {
    File out_stdout = stdout()
  }
}