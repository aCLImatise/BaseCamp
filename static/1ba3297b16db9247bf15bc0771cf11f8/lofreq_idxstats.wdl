version 1.0

task LofreqIdxstats {
  input {
    String sam_tools
    String idx_stats
    String in_dot_bam
  }
  command <<<
    lofreq idxstats \
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