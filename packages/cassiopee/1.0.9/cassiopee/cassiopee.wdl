version 1.0

task Cassiopee {
  input {
    Boolean? maximum_index_depth
    Boolean? save_index_later
    Boolean? _sequence_index
    Boolean? _pattern_search
    Boolean? file_containing_pattern
    File? _output_file
    Boolean? apply_tree_reduction
    Boolean? search_mode_dna
    Boolean? allow_ambiguity_search
    Boolean? max_consecutive_n
    Boolean? max_substitution_allowed
    Boolean? max_indel_allowed
    Boolean? generates_dot_file
    Boolean? max_depth_graph
    Boolean? output_format_tsv
    Boolean? minimum_position_sequence
    Boolean? maximum_position_sequence
    Boolean? apply_morphisms_pattern
    Boolean? _show_version
  }
  command <<<
    cassiopee \
      ~{if (maximum_index_depth) then "-l" else ""} \
      ~{if (save_index_later) then "-u" else ""} \
      ~{if (_sequence_index) then "-s" else ""} \
      ~{if (_pattern_search) then "-p" else ""} \
      ~{if (file_containing_pattern) then "-f" else ""} \
      ~{if (_output_file) then "-o" else ""} \
      ~{if (apply_tree_reduction) then "-r" else ""} \
      ~{if (search_mode_dna) then "-m" else ""} \
      ~{if (allow_ambiguity_search) then "-a" else ""} \
      ~{if (max_consecutive_n) then "-n" else ""} \
      ~{if (max_substitution_allowed) then "-e" else ""} \
      ~{if (max_indel_allowed) then "-i" else ""} \
      ~{if (generates_dot_file) then "-g" else ""} \
      ~{if (max_depth_graph) then "-d" else ""} \
      ~{if (output_format_tsv) then "-t" else ""} \
      ~{if (minimum_position_sequence) then "-x" else ""} \
      ~{if (maximum_position_sequence) then "-y" else ""} \
      ~{if (apply_morphisms_pattern) then "-b" else ""} \
      ~{if (_show_version) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cassiopee:1.0.9--h77ca1fd_0"
  }
  parameter_meta {
    maximum_index_depth: ": maximum index depth / max pattern size"
    save_index_later: ": save index for later use"
    _sequence_index: ": sequence to index"
    _pattern_search: ": pattern to search"
    file_containing_pattern: ": file containing pattern to search"
    _output_file: ": output file"
    apply_tree_reduction: ": apply tree reduction"
    search_mode_dna: ": search mode: 0=DNA, 1=RNA, 2=Protein"
    allow_ambiguity_search: ": allow alphabet ambiguity search"
    max_consecutive_n: ": max consecutive N allowed matches in search"
    max_substitution_allowed: ": max substitution allowed matches in search"
    max_indel_allowed: ": max indel allowed matches in search"
    generates_dot_file: ": generates a dot file of the graph"
    max_depth_graph: ": max depth of the graph"
    output_format_tsv: ": output format: 0:tsv (default), 1:json"
    minimum_position_sequence: ": minimum position in sequence"
    maximum_position_sequence: ": maximum position in sequence"
    apply_morphisms_pattern: ": apply morphisms to pattern"
    _show_version: ": show version"
  }
  output {
    File out_stdout = stdout()
    File out__output_file = "${in__output_file}"
  }
}