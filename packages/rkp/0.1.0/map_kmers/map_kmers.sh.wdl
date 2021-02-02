version 1.0

task MapKmerssh {
  input {
    Boolean? h
    Boolean? n
    Boolean? show_names_match
    Boolean? show_names_do
    Boolean? show_only_count
    Boolean? show_only_part
    Boolean? quiet_return_found
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
    Boolean? fi
    File? fo
    Boolean? bed
    Boolean? name_only
    Boolean? split
    Boolean? tab
    Boolean? full_header
    Boolean? ignore_leading_blanks
    Boolean? dictionary_order_blank
    Boolean? general_numerical_sort
    Boolean? sort_key
    Boolean? sort_month
    String? key_separator
    Boolean? suppress_duplicate_lines
    Boolean? lines_terminated_newline
    Boolean? mst
    Boolean? nrugmcszbdfimstokt
    String? a_slash_b_slash_c
    Boolean? hhnlloqvsriwfe
    String bed_tools
    String grep
    String sort
    String pattern_slash_e
    String get_fast_a
    String pattern_dot_dot_dot_slash_f
    File? file
  }
  command <<<
    map_kmers_sh \
      ~{bed_tools} \
      ~{grep} \
      ~{sort} \
      ~{pattern_slash_e} \
      ~{get_fast_a} \
      ~{pattern_dot_dot_dot_slash_f} \
      ~{file} \
      ~{if (h) then "-H" else ""} \
      ~{if (n) then "-n" else ""} \
      ~{if (show_names_match) then "-l" else ""} \
      ~{if (show_names_do) then "-L" else ""} \
      ~{if (show_only_count) then "-c" else ""} \
      ~{if (show_only_part) then "-o" else ""} \
      ~{if (quiet_return_found) then "-q" else ""} \
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
      ~{if (fi) then "-fi" else ""} \
      ~{if (fo) then "-fo" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (name_only) then "-nameOnly" else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if (tab) then "-tab" else ""} \
      ~{if (full_header) then "-fullHeader" else ""} \
      ~{if (ignore_leading_blanks) then "-b" else ""} \
      ~{if (dictionary_order_blank) then "-d" else ""} \
      ~{if (general_numerical_sort) then "-g" else ""} \
      ~{if (sort_key) then "-k" else ""} \
      ~{if (sort_month) then "-M" else ""} \
      ~{if defined(key_separator) then ("-t " +  '"' + key_separator + '"') else ""} \
      ~{if (suppress_duplicate_lines) then "-u" else ""} \
      ~{if (lines_terminated_newline) then "-z" else ""} \
      ~{if (mst) then "-mST" else ""} \
      ~{if (nrugmcszbdfimstokt) then "-nrugMcszbdfimSTokt" else ""} \
      ~{if defined(a_slash_b_slash_c) then ("-A/B/C " +  '"' + a_slash_b_slash_c + '"') else ""} \
      ~{if (hhnlloqvsriwfe) then "-HhnlLoqvsriwFE" else ""}
  >>>
  parameter_meta {
    h: "Add 'filename:' prefix"
    n: "Add 'line_no:' prefix"
    show_names_match: "Show only names of files that match"
    show_names_do: "Show only names of files that don't match"
    show_only_count: "Show only count of matching lines"
    show_only_part: "Show only the matching part of line"
    quiet_return_found: "Quiet. Return 0 if PATTERN is found, 1 otherwise"
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
    fi: "Input FASTA file"
    fo: "Output file (opt., default is STDOUT"
    bed: "BED/GFF/VCF file of ranges to extract from -fi"
    name_only: "Use the name field for the FASTA header"
    split: "Given BED12 fmt., extract and concatenate the sequences\\nfrom the BED \\\"blocks\\\" (e.g., exons)"
    tab: "Write output in TAB delimited format.\\n- Default is FASTA format."
    full_header: "Use full fasta header.\\n- By default, only the word before the first space or tab\\nis used."
    ignore_leading_blanks: "Ignore leading blanks"
    dictionary_order_blank: "Dictionary order (blank or alphanumeric only)"
    general_numerical_sort: "General numerical sort"
    sort_key: "Sort key"
    sort_month: "Sort month"
    key_separator: "Key separator"
    suppress_duplicate_lines: "Suppress duplicate lines"
    lines_terminated_newline: "Lines are terminated by NUL, not newline"
    mst: "Ignored for GNU compatibility"
    nrugmcszbdfimstokt: ""
    a_slash_b_slash_c: ""
    hhnlloqvsriwfe: ""
    bed_tools: ""
    grep: ""
    sort: ""
    pattern_slash_e: ""
    get_fast_a: ""
    pattern_dot_dot_dot_slash_f: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
    File out_fo = "${in_fo}"
  }
}