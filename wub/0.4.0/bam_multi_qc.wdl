version 1.0

task BamMultiQc.py {
  input {
    String? report_pdf_bammultiqcpdf
    Boolean? plot_reference_statistics
    String input_pickles
  }
  command <<<
    bam_multi_qc.py \
      ~{input_pickles} \
      ~{if defined(report_pdf_bammultiqcpdf) then ("-r " +  '"' + report_pdf_bammultiqcpdf + '"') else ""} \
      ~{true="-x" false="" plot_reference_statistics}
  >>>
  parameter_meta {
    report_pdf_bammultiqcpdf: "Report PDF (bam_multi_qc.pdf)."
    plot_reference_statistics: "Do not plot reference statistics."
    input_pickles: "Input pickles."
  }
}