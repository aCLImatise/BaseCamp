version 1.0

task Bam2fastq {
  input {
    String output_dot_one_dot_fast_q
    String output_dot_two_dot_fast_q
  }
  command <<<
    bam2fastq \
      ~{output_dot_one_dot_fast_q} \
      ~{output_dot_two_dot_fast_q}
  >>>
  parameter_meta {
    output_dot_one_dot_fast_q: ""
    output_dot_two_dot_fast_q: ""
  }
}