version 1.0

task PlotCountsCorrelationpy {
  input {
    String? report_pdf
    Int? data_tags_tagtag
    String? merged_data_tsv
    String? correlation_tsv
    String counts_one
    String counts_two
  }
  command <<<
    plot_counts_correlation_py \
      ~{counts_one} \
      ~{counts_two} \
      ~{if defined(report_pdf) then ("-r " +  '"' + report_pdf + '"') else ""} \
      ~{if defined(data_tags_tagtag) then ("-T " +  '"' + data_tags_tagtag + '"') else ""} \
      ~{if defined(merged_data_tsv) then ("-t " +  '"' + merged_data_tsv + '"') else ""} \
      ~{if defined(correlation_tsv) then ("-o " +  '"' + correlation_tsv + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    report_pdf: "Report PDF."
    data_tags_tagtag: "Data tags: tag1,tag2."
    merged_data_tsv: "Merged data TSV."
    correlation_tsv: "Correlation TSV."
    counts_one: "Input tab separated file."
    counts_two: "Input tab separated file."
  }
  output {
    File out_stdout = stdout()
  }
}