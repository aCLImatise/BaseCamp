version 1.0

task PslStats {
  input {
    Boolean? query_stats
    Boolean? overall_stats
    Int? queries
    String psl
  }
  command <<<
    pslStats \
      ~{psl} \
      ~{if (query_stats) then "-queryStats" else ""} \
      ~{if (overall_stats) then "-overallStats" else ""} \
      ~{if defined(queries) then ("-queries " +  '"' + queries + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query_stats: "- output per-query statistics, the default is per-alignment stats"
    overall_stats: "- output overall statistics."
    queries: "- tab separated file with of expected qNames and sizes.\\nIf specified, statistic will include queries that didn't align.\\n"
    psl: ""
  }
  output {
    File out_stdout = stdout()
  }
}