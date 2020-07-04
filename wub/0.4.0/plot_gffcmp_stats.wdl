version 1.0

task PlotGffcmpStats.py {
  input {
    String? report_pdf_plotgffcmpstatspdf
    String? output_pickle_file
    String input_txt
  }
  command <<<
    plot_gffcmp_stats.py \
      ~{input_txt} \
      ~{if defined(report_pdf_plotgffcmpstatspdf) then ("-r " +  '"' + report_pdf_plotgffcmpstatspdf + '"') else ""} \
      ~{if defined(output_pickle_file) then ("-p " +  '"' + output_pickle_file + '"') else ""}
  >>>
  parameter_meta {
    report_pdf_plotgffcmpstatspdf: "Report PDF (plot_gffcmp_stats.pdf)."
    output_pickle_file: "Output pickle file."
    input_txt: "Input gffcompare stats file."
  }
}