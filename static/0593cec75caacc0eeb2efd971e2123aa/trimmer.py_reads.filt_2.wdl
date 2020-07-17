version 1.0

task Trimmer.pyReads.filt2.fq {
  input {
    String trimmer_do_tpy
    String? input_one_dot_fq
    String? input_two_dot_fq
    String? output_one_dot_fq
    String? output_two_dot_fq
  }
  command <<<
    trimmer.py reads.filt_2.fq \
      ~{trimmer_do_tpy} \
      ~{input_one_dot_fq} \
      ~{input_two_dot_fq} \
      ~{output_one_dot_fq} \
      ~{output_two_dot_fq}
  >>>
  parameter_meta {
    trimmer_do_tpy: ""
    input_one_dot_fq: ""
    input_two_dot_fq: ""
    output_one_dot_fq: ""
    output_two_dot_fq: ""
  }
}