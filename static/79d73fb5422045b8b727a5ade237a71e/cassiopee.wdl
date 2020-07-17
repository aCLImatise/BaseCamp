version 1.0

task Cassiopee {
  input {
    Boolean? maximum_index_depth
    Boolean? save_index_later
    Boolean? _sequence_index
    Boolean? _pattern_search
    Boolean? file_containing_pattern
    Boolean? _output_file
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
    Boolean? _show_version
  }
  command <<<
    cassiopee \
      ~{true="-l" false="" maximum_index_depth} \
      ~{true="-u" false="" save_index_later} \
      ~{true="-s" false="" _sequence_index} \
      ~{true="-p" false="" _pattern_search} \
      ~{true="-f" false="" file_containing_pattern} \
      ~{true="-o" false="" _output_file} \
      ~{true="-r" false="" apply_tree_reduction} \
      ~{true="-m" false="" search_mode_dna} \
      ~{true="-a" false="" allow_ambiguity_search} \
      ~{true="-n" false="" max_consecutive_n} \
      ~{true="-e" false="" max_substitution_allowed} \
      ~{true="-i" false="" max_indel_allowed} \
      ~{true="-g" false="" generates_dot_file} \
      ~{true="-d" false="" max_depth_graph} \
      ~{true="-t" false="" output_format_tsv} \
      ~{true="-x" false="" minimum_position_sequence} \
      ~{true="-y" false="" maximum_position_sequence} \
      ~{true="-v" false="" _show_version}
  >>>
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
    _show_version: ": show version"
  }
}