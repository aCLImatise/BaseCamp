version 1.0

task Fetch {
  input {
    File? config
    Int? width_fasta_output
    Boolean? produce_fasta_output
    Boolean? generate_crc_checksums
    Boolean? reverse_complement_sequence
    Boolean? keep_query_name
    Boolean? print_entries_found
    Boolean? append_sequence_length
  }
  command <<<
    fetch \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(width_fasta_output) then ("-w " +  '"' + width_fasta_output + '"') else ""} \
      ~{true="-f" false="" produce_fasta_output} \
      ~{true="-s" false="" generate_crc_checksums} \
      ~{true="-r" false="" reverse_complement_sequence} \
      ~{true="-k" false="" keep_query_name} \
      ~{true="-m" false="" print_entries_found} \
      ~{true="-l" false="" append_sequence_length}
  >>>
  parameter_meta {
    config: "Use <file> as configuration file"
    width_fasta_output: "Width of FASTA output [80]"
    produce_fasta_output: "Produce FASTA output"
    generate_crc_checksums: "Generate CRC64 checksums"
    reverse_complement_sequence: "Reverse complement sequence (implies -f)"
    keep_query_name: "Keep query name as FASTA header (implies -f)"
    print_entries_found: "Print all entries when multiple are found"
    append_sequence_length: "Append sequence length (; LEN=n) to the FASTA header"
  }
}