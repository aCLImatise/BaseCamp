version 1.0

task Bam2bedgraph {
  input {
    String in_dot_bam
    String? region
  }
  command <<<
    bam2bedgraph \
      ~{in_dot_bam} \
      ~{region}
  >>>
  parameter_meta {
    in_dot_bam: ""
    region: ""
  }
  output {
    File out_stdout = stdout()
  }
}