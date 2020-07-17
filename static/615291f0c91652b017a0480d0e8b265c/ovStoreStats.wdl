version 1.0

task OvStoreStats {
  input {
    String? expect_coverage_mean
    Boolean? write_stats_stdout
    Boolean? report_processing_speed
    String? s
    String? var_4
    String? var_5
    String? b
    String? e
    String out_prefix_dot_per_read_dot_log
    String out_prefix_dot_summary
  }
  command <<<
    ovStoreStats \
      ~{out_prefix_dot_per_read_dot_log} \
      ~{out_prefix_dot_summary} \
      ~{if defined(expect_coverage_mean) then ("-C " +  '"' + expect_coverage_mean + '"') else ""} \
      ~{true="-c" false="" write_stats_stdout} \
      ~{true="-v" false="" report_processing_speed} \
      ~{if defined(s) then ("-S " +  '"' + s + '"') else ""} \
      ~{if defined(var_4) then ("-O " +  '"' + var_4 + '"') else ""} \
      ~{if defined(var_5) then ("-o " +  '"' + var_5 + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""}
  >>>
  parameter_meta {
    expect_coverage_mean: "Expect coverage at mean (below 1/3 this is 'low coverage', above 5/3 is 'repeat')"
    write_stats_stdout: "Write stats to stdout, not to a file"
    report_processing_speed: "Report processing speed to stderr"
    s: ""
    var_4: ""
    var_5: ""
    b: ""
    e: ""
    out_prefix_dot_per_read_dot_log: "One line per read, giving readID, read length and classification."
    out_prefix_dot_summary: "The primary statistical output."
  }
}