version 1.0

task Samtools0118Idxstats {
  input {
    String sam_tools
    String idx_stats
    String in_dot_bam
  }
  command <<<
    samtools_0_1_18 idxstats \
      ~{sam_tools} \
      ~{idx_stats} \
      ~{in_dot_bam}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sam_tools: ""
    idx_stats: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}