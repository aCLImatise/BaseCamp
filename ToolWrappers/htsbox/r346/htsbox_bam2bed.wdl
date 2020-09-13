version 1.0

task HtsboxBam2bed {
  input {
    Boolean? se
    Int bam_two_bed
    String in_dot_bam
  }
  command <<<
    htsbox bam2bed \
      ~{bam_two_bed} \
      ~{in_dot_bam} \
      ~{if (se) then "-Se" else ""}
  >>>
  parameter_meta {
    se: ""
    bam_two_bed: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}