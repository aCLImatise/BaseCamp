version 1.0

task ReverseFastqpyOutputFastq {
  input {
    String reverse_fast_q_do_tpy
    String? input_fast_q
    String? output_fast_q
  }
  command <<<
    reverse_fastq_py output_fastq \
      ~{reverse_fast_q_do_tpy} \
      ~{input_fast_q} \
      ~{output_fast_q}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    reverse_fast_q_do_tpy: ""
    input_fast_q: ""
    output_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}