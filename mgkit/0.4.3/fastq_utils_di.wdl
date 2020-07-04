version 1.0

task FastqUtilsDi {
  input {
    Boolean? strip
    String? fast_q_file
    String mate_one_file
    String mate_two_file
  }
  command <<<
    fastq-utils di \
      ~{fast_q_file} \
      ~{mate_one_file} \
      ~{mate_two_file} \
      ~{true="--strip" false="" strip}
  >>>
  parameter_meta {
    strip: "Strip additional info"
    fast_q_file: ""
    mate_one_file: ""
    mate_two_file: ""
  }
}