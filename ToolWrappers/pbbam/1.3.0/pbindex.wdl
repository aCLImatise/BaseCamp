version 1.0

task Pbindex {
  input {
    String in_dot_bam
  }
  command <<<
    pbindex \
      ~{in_dot_bam}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dot_bam: "FILE  Input BAM file"
  }
  output {
    File out_stdout = stdout()
  }
}