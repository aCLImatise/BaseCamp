version 1.0

task Fastqcount {
  input {
    Int r_one_dot_fq
    Int r_two_dot_fq
  }
  command <<<
    fastq_count \
      ~{r_one_dot_fq} \
      ~{r_two_dot_fq}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    r_one_dot_fq: ""
    r_two_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}