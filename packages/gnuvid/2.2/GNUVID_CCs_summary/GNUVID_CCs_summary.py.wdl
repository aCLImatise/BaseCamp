version 1.0

task GNUVIDCCsSummarypy {
  input {
    String gnuvidccssummary_summarizes_dbisolatesreport
    String inactive_date
    String quiet_date
    String defining_snps
    String gnuviddbisolatesreport_analyze_has
  }
  command <<<
    GNUVID_CCs_summary_py \
      ~{gnuvidccssummary_summarizes_dbisolatesreport} \
      ~{inactive_date} \
      ~{quiet_date} \
      ~{defining_snps} \
      ~{gnuviddbisolatesreport_analyze_has}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnuvid:2.2--0"
  }
  parameter_meta {
    gnuvidccssummary_summarizes_dbisolatesreport: "GNUVID_CCs_summary summarizes the GNUVID DB_isolates_report"
    inactive_date: "an inactive date cutoff, usually 1 month before release\\ndate, in this format (2020-06-03) to assign status"
    quiet_date: "a quiet date cutoff, usually 2 weeks before release\\ndate, in this format (2020-06-03) to assign status"
    defining_snps: "tab-separated file of CC, SNPs and GISAID clade (.txt)"
    gnuviddbisolatesreport_analyze_has: "GNUVID_DB_isolates_report to analyze that has STs and\\nCCs (.txt)"
  }
  output {
    File out_stdout = stdout()
  }
}