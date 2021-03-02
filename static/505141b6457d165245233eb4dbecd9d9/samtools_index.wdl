version 1.0

task SamtoolsIndex {
  input {
    String in_dot_bam
    String? out_dot_index
  }
  command <<<
    samtools index \
      ~{in_dot_bam} \
      ~{out_dot_index}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dot_bam: ""
    out_dot_index: ""
  }
  output {
    File out_stdout = stdout()
  }
}