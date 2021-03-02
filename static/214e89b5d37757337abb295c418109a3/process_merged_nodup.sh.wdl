version 1.0

task ProcessMergedNodupsh {
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
    String? preset_pairs_mergednodups
    Int? e
    Int? v
    Boolean? delimiter_space_instead
    Boolean? query_region_string
    Int? skip_first_lines
    String? symbol_query_region
    Boolean? zerobased_coordinate
    Boolean? print_only_lines
    Boolean? print_only_number
    Boolean? print_only_region
    Boolean? only_check_occurs
    Boolean? list_chromosome_names
    Boolean? autoflip_query_pair
    Boolean? nrugmcszbdfimstokt
    String pair_ix
    String sort
    String in_dot_pairs_do_tgz
  }
  command <<<
    process_merged_nodup_sh \
      ~{pair_ix} \
      ~{sort} \
      ~{in_dot_pairs_do_tgz} \
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
      ~{if defined(preset_pairs_mergednodups) then ("-p " +  '"' + preset_pairs_mergednodups + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if (delimiter_space_instead) then "-T" else ""} \
      ~{if (query_region_string) then "-L" else ""} \
      ~{if defined(skip_first_lines) then ("-S " +  '"' + skip_first_lines + '"') else ""} \
      ~{if defined(symbol_query_region) then ("-w " +  '"' + symbol_query_region + '"') else ""} \
      ~{if (zerobased_coordinate) then "-0" else ""} \
      ~{if (print_only_lines) then "-H" else ""} \
      ~{if (print_only_number) then "-B" else ""} \
      ~{if (print_only_region) then "-W" else ""} \
      ~{if (only_check_occurs) then "-Y" else ""} \
      ~{if (list_chromosome_names) then "-l" else ""} \
      ~{if (autoflip_query_pair) then "-a" else ""} \
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
    preset_pairs_mergednodups: "preset: pairs, merged_nodups, old_merged_nodups, gff, bed, sam, vcf, psltbl [gff]"
    e: "end1 column; can be identical to '-b' [5]"
    v: "end2 column; can be identical to '-u' [null or identical to the start2 specified by -u]"
    delimiter_space_instead: "delimiter is space instead of tab."
    query_region_string: "query region is not a string but a file listing query regions"
    skip_first_lines: "skip first INT lines [0]"
    symbol_query_region: "symbol for query region separator [|]"
    zerobased_coordinate: "zero-based coordinate"
    print_only_lines: "print only the header lines"
    print_only_number: "print only the number of bgzf blocks for existing chromosome (pairs)"
    print_only_region: "print only the region split character"
    only_check_occurs: "Only check if the file is a triangle (i.e. a chromosome pair occurs only in one direction (e.g. if chr1|chr2 exists, chr2|chr1 doesn't))"
    list_chromosome_names: "list chromosome names"
    autoflip_query_pair: "autoflip query when the matching chromosome pair doesn't exist"
    nrugmcszbdfimstokt: ""
    pair_ix: ""
    sort: ""
    in_dot_pairs_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_to_file = "${in_output_to_file}"
  }
}