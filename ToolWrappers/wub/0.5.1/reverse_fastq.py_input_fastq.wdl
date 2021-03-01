version 1.0

task ReverseFastqpyInputFastq {
  input {
    String? output_fast_q
  }
  command <<<
    reverse_fastq_py input_fastq \
      ~{output_fast_q}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    output_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}