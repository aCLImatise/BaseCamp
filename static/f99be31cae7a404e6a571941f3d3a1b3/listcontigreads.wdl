version 1.0

task Listcontigreads {
  input {
    Boolean? h
    Boolean? n
    Boolean? show_names_match
    Boolean? show_names_do
    Boolean? show_only_count
    Boolean? show_only_part
    Boolean? quiet_return_pattern
    Boolean? select_nonmatching_lines
    Boolean? suppress_open_read
    Boolean? recurse
    Boolean? ignore_case
    Boolean? match_whole_words
    Boolean? match_whole_lines
    Boolean? pattern_literal_regexp
    Boolean? pattern_extended_regexp
    File? match_n_times
    String? print_n_lines_trailing
    String? print_n_lines_leading
    String? same_as
    String? pattern_to_match
    File? read_pattern_file
    Boolean? hhnlloqvsriwfe
    String grep
  }
  command <<<
    listcontigreads \
      ~{grep} \
      ~{if (h) then "-H" else ""} \
      ~{if (n) then "-n" else ""} \
      ~{if (show_names_match) then "-l" else ""} \
      ~{if (show_names_do) then "-L" else ""} \
      ~{if (show_only_count) then "-c" else ""} \
      ~{if (show_only_part) then "-o" else ""} \
      ~{if (quiet_return_pattern) then "-q" else ""} \
      ~{if (select_nonmatching_lines) then "-v" else ""} \
      ~{if (suppress_open_read) then "-s" else ""} \
      ~{if (recurse) then "-r" else ""} \
      ~{if (ignore_case) then "-i" else ""} \
      ~{if (match_whole_words) then "-w" else ""} \
      ~{if (match_whole_lines) then "-x" else ""} \
      ~{if (pattern_literal_regexp) then "-F" else ""} \
      ~{if (pattern_extended_regexp) then "-E" else ""} \
      ~{if defined(match_n_times) then ("-m " +  '"' + match_n_times + '"') else ""} \
      ~{if defined(print_n_lines_trailing) then ("-A " +  '"' + print_n_lines_trailing + '"') else ""} \
      ~{if defined(print_n_lines_leading) then ("-B " +  '"' + print_n_lines_leading + '"') else ""} \
      ~{if defined(same_as) then ("-C " +  '"' + same_as + '"') else ""} \
      ~{if defined(pattern_to_match) then ("-e " +  '"' + pattern_to_match + '"') else ""} \
      ~{if defined(read_pattern_file) then ("-f " +  '"' + read_pattern_file + '"') else ""} \
      ~{if (hhnlloqvsriwfe) then "-HhnlLoqvsriwFE" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    h: "Add 'filename:' prefix"
    n: "Add 'line_no:' prefix"
    show_names_match: "Show only names of files that match"
    show_names_do: "Show only names of files that don't match"
    show_only_count: "Show only count of matching lines"
    show_only_part: "Show only the matching part of line"
    quiet_return_pattern: "Quiet. Return 0 if PATTERN is found, 1 otherwise"
    select_nonmatching_lines: "Select non-matching lines"
    suppress_open_read: "Suppress open and read errors"
    recurse: "Recurse"
    ignore_case: "Ignore case"
    match_whole_words: "Match whole words only"
    match_whole_lines: "Match whole lines only"
    pattern_literal_regexp: "PATTERN is a literal (not regexp)"
    pattern_extended_regexp: "PATTERN is an extended regexp"
    match_n_times: "Match up to N times per file"
    print_n_lines_trailing: "Print N lines of trailing context"
    print_n_lines_leading: "Print N lines of leading context"
    same_as: "Same as '-A N -B N'"
    pattern_to_match: "Pattern to match"
    read_pattern_file: "Read pattern from file"
    hhnlloqvsriwfe: ""
    grep: ""
  }
  output {
    File out_stdout = stdout()
  }
}