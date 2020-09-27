version 1.0

task Mfqe {
  input {
    File? input_fast_q
    Boolean? output_uncompressed
    String? fast_a_read_name_lists
    String? fast_q_read_name_lists
    File? input_fast_a
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
      ~{if defined(input_fast_q) then ("--input-fastq " +  '"' + input_fast_q + '"') else ""} \
      ~{if (output_uncompressed) then "--output-uncompressed" else ""} \
      ~{if defined(fast_a_read_name_lists) then ("--fasta-read-name-lists " +  '"' + fast_a_read_name_lists + '"') else ""} \
      ~{if defined(fast_q_read_name_lists) then ("--fastq-read-name-lists " +  '"' + fast_q_read_name_lists + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(output_fast_a_files) then ("--output-fasta-files " +  '"' + output_fast_a_files + '"') else ""} \
      ~{if defined(output_fast_q_files) then ("--output-fastq-files " +  '"' + output_fast_q_files + '"') else ""} \
      ~{if defined(sequence_name_lists) then ("--sequence-name-lists " +  '"' + sequence_name_lists + '"') else ""}
  >>>
  parameter_meta {
    input_fast_q: ": Use this file as input FASTQ [default: Use STDIN]"
    output_uncompressed: "Output sequences uncompressed [default: gzip compress outputs]"
    fast_a_read_name_lists: "...\\nList of files each containing sequence IDs [alias for --sequence-name-lists]"
    fast_q_read_name_lists: "...\\nList of files each containing sequence IDs [alias for --sequence-name-lists]"
    input_fast_a: "File containing uncompressed input FASTA sequences [default: Use STDIN]"
    output_fast_a_files: "...          List of files to write FASTA to"
    output_fast_q_files: "...          List of files to write FASTQ to"
    sequence_name_lists: "...        List of files each containing sequence IDs"
    usage: ""
    for: ""
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}