version 1.0

task SmofSort {
  input {
    String? regex
    Boolean? reverse
    Boolean? numeric_sort
    Boolean? length_sort
    Boolean? random_sort
    String? key
    String? field_separator
    String? pair_separator
    String input_fasta_sequence
  }
  command <<<
    smof sort \
      ~{input_fasta_sequence} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--numeric-sort" false="" numeric_sort} \
      ~{true="--length-sort" false="" length_sort} \
      ~{true="--random-sort" false="" random_sort} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(field_separator) then ("--field-separator " +  '"' + field_separator + '"') else ""} \
      ~{if defined(pair_separator) then ("--pair-separator " +  '"' + pair_separator + '"') else ""}
  >>>
  parameter_meta {
    regex: "sort by single regex capture"
    reverse: "reverse sort"
    numeric_sort: "numeric sort"
    length_sort: "sort by sequence length"
    random_sort: "randomly sort sequences"
    key: "Key to sort on (column number or tag)"
    field_separator: "The field separator (default: '|')"
    pair_separator: "The separator between a tag and value (default: '=')"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
}