version 1.0

task Samtools0118Index {
  input {
    String sam_tools
    String index
    String in_dot_bam
    String? out_dot_index
  }
  command <<<
    samtools_0_1_18 index \
      ~{sam_tools} \
      ~{index} \
      ~{in_dot_bam} \
      ~{out_dot_index}
  >>>
  parameter_meta {
    sam_tools: ""
    index: ""
    in_dot_bam: ""
    out_dot_index: ""
  }
  output {
    File out_stdout = stdout()
  }
}