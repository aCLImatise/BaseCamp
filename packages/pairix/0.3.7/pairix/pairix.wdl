version 1.0

task Pairix {
  input {
    String? preset_pairs_mergednodups
    Int? sequence_name_column
    Int? second_sequence_name
    Int? var_3
    Int? e
    Int? u
    Int? v
    Boolean? delimiter_space_instead
    Boolean? query_region_string
    Int? skip_first_int
    String? symbol_commentmeta_lines
    String? symbol_query_region
    File? replace_header_content
    Boolean? zerobased_coordinate
    Boolean? print_only_lines
    Boolean? print_only_number
    Boolean? print_only_region
    Boolean? only_check_occurs
    Boolean? list_chromosome_names
    Boolean? print_only_count
    Boolean? force_overwrite_index
    Boolean? autoflip_query_exist
    String in_dot_pairs_do_tgz
  }
  command <<<
    pairix \
      ~{in_dot_pairs_do_tgz} \
      ~{if defined(preset_pairs_mergednodups) then ("-p " +  '"' + preset_pairs_mergednodups + '"') else ""} \
      ~{if defined(sequence_name_column) then ("-s " +  '"' + sequence_name_column + '"') else ""} \
      ~{if defined(second_sequence_name) then ("-d " +  '"' + second_sequence_name + '"') else ""} \
      ~{if defined(var_3) then ("-b " +  '"' + var_3 + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(u) then ("-u " +  '"' + u + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if (delimiter_space_instead) then "-T" else ""} \
      ~{if (query_region_string) then "-L" else ""} \
      ~{if defined(skip_first_int) then ("-S " +  '"' + skip_first_int + '"') else ""} \
      ~{if defined(symbol_commentmeta_lines) then ("-c " +  '"' + symbol_commentmeta_lines + '"') else ""} \
      ~{if defined(symbol_query_region) then ("-w " +  '"' + symbol_query_region + '"') else ""} \
      ~{if defined(replace_header_content) then ("-r " +  '"' + replace_header_content + '"') else ""} \
      ~{if (zerobased_coordinate) then "-0" else ""} \
      ~{if (print_only_lines) then "-H" else ""} \
      ~{if (print_only_number) then "-B" else ""} \
      ~{if (print_only_region) then "-W" else ""} \
      ~{if (only_check_occurs) then "-Y" else ""} \
      ~{if (list_chromosome_names) then "-l" else ""} \
      ~{if (print_only_count) then "-n" else ""} \
      ~{if (force_overwrite_index) then "-f" else ""} \
      ~{if (autoflip_query_exist) then "-a" else ""}
  >>>
  parameter_meta {
    preset_pairs_mergednodups: "preset: pairs, merged_nodups, old_merged_nodups, gff, bed, sam, vcf, psltbl [gff]"
    sequence_name_column: "sequence name column [1]"
    second_sequence_name: "second sequence name column [null]"
    var_3: "start1 column [4]"
    e: "end1 column; can be identical to '-b' [5]"
    u: "start2 column [null]"
    v: "end2 column; can be identical to '-u' [null or identical to the start2 specified by -u]"
    delimiter_space_instead: "delimiter is space instead of tab."
    query_region_string: "query region is not a string but a file listing query regions"
    skip_first_int: "skip first INT lines [0]"
    symbol_commentmeta_lines: "symbol for comment/meta lines [#]"
    symbol_query_region: "symbol for query region separator [|]"
    replace_header_content: "replace the header with the content of FILE [null]"
    zerobased_coordinate: "zero-based coordinate"
    print_only_lines: "print only the header lines"
    print_only_number: "print only the number of bgzf blocks for existing chromosome (pairs)"
    print_only_region: "print only the region split character"
    only_check_occurs: "Only check if the file is a triangle (i.e. a chromosome pair occurs only in one direction (e.g. if chr1|chr2 exists, chr2|chr1 doesn't))"
    list_chromosome_names: "list chromosome names"
    print_only_count: "print only the total line count (same as gunzip -c | wc -l but much faster)"
    force_overwrite_index: "force to overwrite the index"
    autoflip_query_exist: "autoflip query when the matching chromosome pair doesn't exist"
    in_dot_pairs_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
  }
}