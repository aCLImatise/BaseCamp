version 1.0

task BamMultiQcpy {
  input {
    String? report_pdf_bammultiqcpdf
    Boolean? plot_reference_statistics
    String input_pickles
  }
  command <<<
    bam_multi_qc_py \
      ~{input_pickles} \
      ~{if defined(report_pdf_bammultiqcpdf) then ("-r " +  '"' + report_pdf_bammultiqcpdf + '"') else ""} \
      ~{if (plot_reference_statistics) then "-x" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    report_pdf_bammultiqcpdf: "Report PDF (bam_multi_qc.pdf)."
    plot_reference_statistics: "Do not plot reference statistics."
    input_pickles: "Input pickles."
  }
  output {
    File out_stdout = stdout()
  }
}