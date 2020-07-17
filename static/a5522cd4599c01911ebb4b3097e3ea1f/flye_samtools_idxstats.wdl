version 1.0

task FlyeSamtoolsIdxstats {
  input {
    Int? threads
    String sam_tools
    String idx_stats
    String in_dot_bam
  }
  command <<<
    flye-samtools idxstats \
      ~{sam_tools} \
      ~{idx_stats} \
      ~{in_dot_bam} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of additional threads to use [0]"
    sam_tools: ""
    idx_stats: ""
    in_dot_bam: ""
  }
}