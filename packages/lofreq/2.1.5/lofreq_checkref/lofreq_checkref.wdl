version 1.0

task LofreqCheckref {
  input {
    String ref_dot_fa
    String in_dot_bam
  }
  command <<<
    lofreq checkref \
      ~{ref_dot_fa} \
      ~{in_dot_bam}
  >>>
  parameter_meta {
    ref_dot_fa: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}