version 1.0

task Mfqe {
  input {
    Boolean? output_uncompressed
    String? input_fast_a
    String? input_fast_q
    String? output_fast_a_files
    String? output_fast_q_files
    String? sequence_name_lists
    String usage
    String for
    String fast_q
  }
  command <<<
    mfqe \
      ~{usage} \
      ~{for} \
      ~{fast_q} \
      ~{true="--output-uncompressed" false="" output_uncompressed} \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(input_fast_q) then ("--input-fastq " +  '"' + input_fast_q + '"') else ""} \
      ~{if defined(output_fast_a_files) then ("--output-fasta-files " +  '"' + output_fast_a_files + '"') else ""} \
      ~{if defined(output_fast_q_files) then ("--output-fastq-files " +  '"' + output_fast_q_files + '"') else ""} \
      ~{if defined(sequence_name_lists) then ("--sequence-name-lists " +  '"' + sequence_name_lists + '"') else ""}
  >>>
  parameter_meta {
    output_uncompressed: "Output sequences uncompressed [default: gzip compress outputs]"
    input_fast_a: "File containing uncompressed input FASTA sequences [default: Use STDIN]"
    input_fast_q: "File containing uncompressed input FASTQ sequences [default: Use STDIN]"
    output_fast_a_files: "...          List of files to write FASTA to"
    output_fast_q_files: "...          List of files to write FASTQ to"
    sequence_name_lists: "...        List of files each containing sequence IDs"
    usage: ""
    for: ""
    fast_q: ""
  }
}