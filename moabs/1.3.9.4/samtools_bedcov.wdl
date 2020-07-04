version 1.0

task SamtoolsBedcov {
  input {
    String in_dot_bed
    String in_one_dot_bam
  }
  command <<<
    samtools bedcov \
      ~{in_dot_bed} \
      ~{in_one_dot_bam}
  >>>
  parameter_meta {
    in_dot_bed: ""
    in_one_dot_bam: ""
  }
}