version 1.0

task BlFastq2fasta {
  input {
    Boolean? specify_multiple_fastq_files
    Boolean? specify_multiple_corresponding_fasta_files
    Boolean? specify_multiple_corresponding_output_files
    Boolean? print_ascii_scores
    Boolean? use_offset_converting
    Boolean? reformat_id_line
    String fast_q_two_fast_a
  }
  command <<<
    bl-fastq2fasta \
      ~{fast_q_two_fast_a} \
      ~{true="-i" false="" specify_multiple_fastq_files} \
      ~{true="-o" false="" specify_multiple_corresponding_fasta_files} \
      ~{true="-q" false="" specify_multiple_corresponding_output_files} \
      ~{true="-a" false="" print_ascii_scores} \
      ~{true="-t" false="" use_offset_converting} \
      ~{true="-s" false="" reformat_id_line}
  >>>
  parameter_meta {
    specify_multiple_fastq_files: "specify multiple FASTQ input files"
    specify_multiple_corresponding_fasta_files: "specify multiple (corresponding) FASTA output files"
    specify_multiple_corresponding_output_files: "specify multiple (corresponding) QUAL output files"
    print_ascii_scores: "print ASCII quality scores (default: numerical scores)"
    use_offset_converting: "use OFFSET for converting ASCII quality scores (default: 33)"
    reformat_id_line: "reformat the ID line by replacing everything after a space, tab or / with with the specified SUFFIX"
    fast_q_two_fast_a: ""
  }
}