version 1.0

task ReverseFastqpyInputFastq {
  input {
    String? output_fast_q
  }
  command <<<
    reverse_fastq_py input_fastq \
      ~{output_fast_q}
  >>>
  parameter_meta {
    output_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}