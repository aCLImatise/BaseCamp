version 1.0

task FastqCount {
  input {
    String r_one_dot_fq
    String r_two_dot_fq
  }
  command <<<
    fastq-count \
      ~{r_one_dot_fq} \
      ~{r_two_dot_fq}
  >>>
  parameter_meta {
    r_one_dot_fq: ""
    r_two_dot_fq: ""
  }
}