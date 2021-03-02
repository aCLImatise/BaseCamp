version 1.0

task OvStoreStats {
  input {
    Int? expect_coverage_mean
    Boolean? write_stats_stdout
    Boolean? report_processing_speed
    String? e
    String? b
    String? var_5
    String? var_6
    String? s
    String out_prefix_dot_per_read_dot_log
    String out_prefix_dot_summary
  }
  command <<<
    ovStoreStats \
      ~{out_prefix_dot_per_read_dot_log} \
      ~{out_prefix_dot_summary} \
      ~{if defined(expect_coverage_mean) then ("-C " +  '"' + expect_coverage_mean + '"') else ""} \
      ~{if (write_stats_stdout) then "-c" else ""} \
      ~{if (report_processing_speed) then "-v" else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(var_5) then ("-o " +  '"' + var_5 + '"') else ""} \
      ~{if defined(var_6) then ("-O " +  '"' + var_6 + '"') else ""} \
      ~{if defined(s) then ("-S " +  '"' + s + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    expect_coverage_mean: "Expect coverage at mean (below 1/3 this is 'low coverage', above 5/3 is 'repeat')"
    write_stats_stdout: "Write stats to stdout, not to a file"
    report_processing_speed: "Report processing speed to stderr"
    e: ""
    b: ""
    var_5: ""
    var_6: ""
    s: ""
    out_prefix_dot_per_read_dot_log: "One line per read, giving readID, read length and classification."
    out_prefix_dot_summary: "The primary statistical output."
  }
  output {
    File out_stdout = stdout()
  }
}