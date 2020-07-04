version 1.0

task ExtractSeq {
  input {
    String? name_write_sequence
    String? sequence_name_extract
    Boolean? do_remove_gaps
    String msa_file
  }
  command <<<
    extract_seq \
      ~{msa_file} \
      ~{if defined(name_write_sequence) then ("-o " +  '"' + name_write_sequence + '"') else ""} \
      ~{if defined(sequence_name_extract) then ("-s " +  '"' + sequence_name_extract + '"') else ""} \
      ~{true="-g" false="" do_remove_gaps}
  >>>
  parameter_meta {
    name_write_sequence: "Name of output file to write sequence to"
    sequence_name_extract: "Sequence name to extract"
    do_remove_gaps: "Do not remove gaps"
    msa_file: "file containing MSA"
  }
}