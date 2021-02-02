version 1.0

task Precheckpy {
  input {
    Int reads_one_dot_fq
    Int reads_two_dot_fq
  }
  command <<<
    precheck_py \
      ~{reads_one_dot_fq} \
      ~{reads_two_dot_fq}
  >>>
  parameter_meta {
    reads_one_dot_fq: "The first mates in the read pairs."
    reads_two_dot_fq: "The second mates in the read pairs."
  }
  output {
    File out_stdout = stdout()
  }
}