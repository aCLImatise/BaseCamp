version 1.0

task Trinity {
  input {
    Boolean? ignore_leading_blanks
    Boolean? check_input_sorted
    Boolean? dictionary_order_blank
    Boolean? ignore_case
    Boolean? general_numerical_sort
    Boolean? ignore_unprintable_characters
    Boolean? sort_key
    Boolean? sort_month
    Boolean? sort_numbers
    File? output_to_file
    String? key_separator
    Boolean? reverse_sort_order
    Boolean? stable_sort_ties
    Boolean? suppress_duplicate_lines
    Boolean? lines_terminated_newline
    Boolean? mst
    Boolean? nrugmcszbdfimstokt
    Float trinity_v_two_dot_nine_dot_one
  }
  command <<<
    Trinity \
      ~{trinity_v_two_dot_nine_dot_one} \
      ~{if (ignore_leading_blanks) then "-b" else ""} \
      ~{if (check_input_sorted) then "-c" else ""} \
      ~{if (dictionary_order_blank) then "-d" else ""} \
      ~{if (ignore_case) then "-f" else ""} \
      ~{if (general_numerical_sort) then "-g" else ""} \
      ~{if (ignore_unprintable_characters) then "-i" else ""} \
      ~{if (sort_key) then "-k" else ""} \
      ~{if (sort_month) then "-M" else ""} \
      ~{if (sort_numbers) then "-n" else ""} \
      ~{if (output_to_file) then "-o" else ""} \
      ~{if defined(key_separator) then ("-t " +  '"' + key_separator + '"') else ""} \
      ~{if (reverse_sort_order) then "-r" else ""} \
      ~{if (stable_sort_ties) then "-s" else ""} \
      ~{if (suppress_duplicate_lines) then "-u" else ""} \
      ~{if (lines_terminated_newline) then "-z" else ""} \
      ~{if (mst) then "-mST" else ""} \
      ~{if (nrugmcszbdfimstokt) then "-nrugMcszbdfimSTokt" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ignore_leading_blanks: "Ignore leading blanks"
    check_input_sorted: "Check whether input is sorted"
    dictionary_order_blank: "Dictionary order (blank or alphanumeric only)"
    ignore_case: "Ignore case"
    general_numerical_sort: "General numerical sort"
    ignore_unprintable_characters: "Ignore unprintable characters"
    sort_key: "Sort key"
    sort_month: "Sort month"
    sort_numbers: "Sort numbers"
    output_to_file: "Output to file"
    key_separator: "Key separator"
    reverse_sort_order: "Reverse sort order"
    stable_sort_ties: "Stable (don't sort ties alphabetically)"
    suppress_duplicate_lines: "Suppress duplicate lines"
    lines_terminated_newline: "Lines are terminated by NUL, not newline"
    mst: "Ignored for GNU compatibility"
    nrugmcszbdfimstokt: ""
    trinity_v_two_dot_nine_dot_one: "#"
  }
  output {
    File out_stdout = stdout()
    File out_output_to_file = "${in_output_to_file}"
  }
}