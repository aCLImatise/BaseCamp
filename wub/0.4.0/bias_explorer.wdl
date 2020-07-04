version 1.0

task BiasExplorer.py {
  input {
    String? report_pdf_biasexplorerpdf
    Boolean? exclude_transcripts_zero
    String count_file
  }
  command <<<
    bias_explorer.py \
      ~{count_file} \
      ~{if defined(report_pdf_biasexplorerpdf) then ("-r " +  '"' + report_pdf_biasexplorerpdf + '"') else ""} \
      ~{true="-x" false="" exclude_transcripts_zero}
  >>>
  parameter_meta {
    report_pdf_biasexplorerpdf: "Report PDF (bias_explorer.pdf)."
    exclude_transcripts_zero: "Exclude transcripts with zero counts."
    count_file: "Input counts file with length ang GC content features."
  }
}