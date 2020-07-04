version 1.0

task ReverseFastq.pyOutputFastq {
  input {
    String reverse_fast_q_do_tpy
    String? input_fast_q
    String? output_fast_q
  }
  command <<<
    reverse_fastq.py output_fastq \
      ~{reverse_fast_q_do_tpy} \
      ~{input_fast_q} \
      ~{output_fast_q}
  >>>
  parameter_meta {
    reverse_fast_q_do_tpy: ""
    input_fast_q: ""
    output_fast_q: ""
  }
}