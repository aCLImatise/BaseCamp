version 1.0

task FastqUtilsConvert {
  input {
    String? fast_q_file
    String? fast_a_file
  }
  command <<<
    fastq-utils convert \
      ~{fast_q_file} \
      ~{fast_a_file}
  >>>
  parameter_meta {
    fast_q_file: ""
    fast_a_file: ""
  }
}