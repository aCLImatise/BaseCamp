version 1.0

task SgaAstat.py {
  input {
    String in_dot_bam
  }
  command <<<
    sga-astat.py \
      ~{in_dot_bam}
  >>>
  parameter_meta {
    in_dot_bam: ""
  }
}