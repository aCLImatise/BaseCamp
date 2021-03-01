version 1.0

task Samtools0118Flagstat {
  input {
    String sam_tools
    String flag_stat
    String in_dot_bam
  }
  command <<<
    samtools_0_1_18 flagstat \
      ~{sam_tools} \
      ~{flag_stat} \
      ~{in_dot_bam}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sam_tools: ""
    flag_stat: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}