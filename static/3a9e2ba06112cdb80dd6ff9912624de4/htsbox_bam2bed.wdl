version 1.0

task HtsboxBam2bed {
  input {
    Boolean? se
    String bam_two_bed
    String in_dot_bam
  }
  command <<<
    htsbox bam2bed \
      ~{bam_two_bed} \
      ~{in_dot_bam} \
      ~{true="-Se" false="" se}
  >>>
  parameter_meta {
    se: ""
    bam_two_bed: ""
    in_dot_bam: ""
  }
}