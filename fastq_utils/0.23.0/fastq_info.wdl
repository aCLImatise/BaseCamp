version 1.0

task FastqInfo {
  input {
    Boolean? reads_two_fastq
    Boolean? fail_empty_files
    Boolean? fail_encoding_determined
    Boolean? skip_check_duplicated
    String fast_q_one
    String? fast_q_two
    File? file_vertical_line_pe
  }
  command <<<
    fastq_info \
      ~{fast_q_one} \
      ~{fast_q_two} \
      ~{file_vertical_line_pe} \
      ~{true="-s" false="" reads_two_fastq} \
      ~{true="-e" false="" fail_empty_files} \
      ~{true="-q" false="" fail_encoding_determined} \
      ~{true="-r" false="" skip_check_duplicated}
  >>>
  parameter_meta {
    reads_two_fastq: ": the reads in the two fastq files have the same ordering"
    fail_empty_files: ": do not fail with empty files"
    fail_encoding_determined: ": do not fail if quality encoding cannot be determined"
    skip_check_duplicated: ": skip check for duplicated readnames"
    fast_q_one: ""
    fast_q_two: ""
    file_vertical_line_pe: ""
  }
}