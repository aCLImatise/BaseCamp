version 1.0

task PlotQualitiespy {
  input {
    Int? window_size_
    String? report_pdf_plotqualitiespdf
  }
  command <<<
    plot_qualities_py \
      ~{if defined(window_size_) then ("-w " +  '"' + window_size_ + '"') else ""} \
      ~{if defined(report_pdf_plotqualitiespdf) then ("-r " +  '"' + report_pdf_plotqualitiespdf + '"') else ""}
  >>>
  parameter_meta {
    window_size_: "Window size (50)."
    report_pdf_plotqualitiespdf: "Report pdf (plot_qualities.pdf)."
  }
  output {
    File out_stdout = stdout()
  }
}