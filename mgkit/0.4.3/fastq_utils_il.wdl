version 1.0

task FastqUtilsIl {
  input {
    String mate_one_file
    String mate_two_file
    String? fast_q_file
  }
  command <<<
    fastq-utils il \
      ~{mate_one_file} \
      ~{mate_two_file} \
      ~{fast_q_file}
  >>>
  parameter_meta {
    mate_one_file: ""
    mate_two_file: ""
    fast_q_file: ""
  }
}