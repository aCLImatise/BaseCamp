version 1.0

task SamtoolsBedcov {
  input {
    String in_dot_bed
    Int in_one_dot_bam
  }
  command <<<
    samtools bedcov \
      ~{in_dot_bed} \
      ~{in_one_dot_bam}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dot_bed: ""
    in_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}