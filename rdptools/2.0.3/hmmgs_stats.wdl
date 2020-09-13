version 1.0

task HmmgsStats {
  input {
    String bloom_filter_stats
    String bloom_filter
  }
  command <<<
    hmmgs stats \
      ~{bloom_filter_stats} \
      ~{bloom_filter}
  >>>
  parameter_meta {
    bloom_filter_stats: ""
    bloom_filter: ""
  }
  output {
    File out_stdout = stdout()
  }
}