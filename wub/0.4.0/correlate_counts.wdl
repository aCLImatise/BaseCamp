version 1.0

task CorrelateCounts.py {
  input {
    String? report_pdf_bammultiqcpdf
    String? correlation_statistic_spearman
    Boolean? log_transform_data
    Boolean? omit_lower_diagonal
    String input_counts
  }
  command <<<
    correlate_counts.py \
      ~{input_counts} \
      ~{if defined(report_pdf_bammultiqcpdf) then ("-r " +  '"' + report_pdf_bammultiqcpdf + '"') else ""} \
      ~{if defined(correlation_statistic_spearman) then ("-c " +  '"' + correlation_statistic_spearman + '"') else ""} \
      ~{true="-L" false="" log_transform_data} \
      ~{true="-o" false="" omit_lower_diagonal}
  >>>
  parameter_meta {
    report_pdf_bammultiqcpdf: "Report PDF (bam_multi_qc.pdf)."
    correlation_statistic_spearman: "Correlation statistic - spearman or pearson (spearman)."
    log_transform_data: "Log transform data."
    omit_lower_diagonal: "Omit lower diagonal."
    input_counts: "Input counts as tab separated files."
  }
}