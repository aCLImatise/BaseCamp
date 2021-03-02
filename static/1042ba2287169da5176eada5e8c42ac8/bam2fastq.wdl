version 1.0

task Bam2fastq {
  input {
    Float output_dot_one_dot_fast_q
    Float output_dot_two_dot_fast_q
  }
  command <<<
    bam2fastq \
      ~{output_dot_one_dot_fast_q} \
      ~{output_dot_two_dot_fast_q}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dot_one_dot_fast_q: ""
    output_dot_two_dot_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}