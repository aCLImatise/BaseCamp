version 1.0

task BiasExplorerpy {
  input {
    String? report_pdf_biasexplorerpdf
    Boolean? exclude_transcripts_zero
    String count_file
  }
  command <<<
    bias_explorer_py \
      ~{count_file} \
      ~{if defined(report_pdf_biasexplorerpdf) then ("-r " +  '"' + report_pdf_biasexplorerpdf + '"') else ""} \
      ~{if (exclude_transcripts_zero) then "-x" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    report_pdf_biasexplorerpdf: "Report PDF (bias_explorer.pdf)."
    exclude_transcripts_zero: "Exclude transcripts with zero counts."
    count_file: "Input counts file with length ang GC content features."
  }
  output {
    File out_stdout = stdout()
  }
}