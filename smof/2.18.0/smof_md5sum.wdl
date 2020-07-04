version 1.0

task SmofMd5sum {
  input {
    Boolean? ignore_case
    Boolean? each_sequence
    Boolean? all_sequences
    Boolean? all_headers
    Boolean? replace_header
    String input_fasta_sequence
  }
  command <<<
    smof md5sum \
      ~{input_fasta_sequence} \
      ~{true="--ignore-case" false="" ignore_case} \
      ~{true="--each-sequence" false="" each_sequence} \
      ~{true="--all-sequences" false="" all_sequences} \
      ~{true="--all-headers" false="" all_headers} \
      ~{true="--replace-header" false="" replace_header}
  >>>
  parameter_meta {
    ignore_case: "convert all to uppercase, before hashing"
    each_sequence: "calculate md5sum for each sequence (TAB delimited)"
    all_sequences: "calculate one md5sum for all concatenated sequences"
    all_headers: "calculate one md5sum for all concatenated headers"
    replace_header: "replace the header of each entry with the checksum of the sequence"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
}