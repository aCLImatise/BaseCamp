version 1.0

task Samtools0118Reheader {
  input {
    String sam_tools
    String re_header
    String in_dot_header_dots_am
    String in_dot_bam
  }
  command <<<
    samtools_0_1_18 reheader \
      ~{sam_tools} \
      ~{re_header} \
      ~{in_dot_header_dots_am} \
      ~{in_dot_bam}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sam_tools: ""
    re_header: ""
    in_dot_header_dots_am: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}