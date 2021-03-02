version 1.0

task PlotGffcmpStatspy {
  input {
    String? report_pdf_plotgffcmpstatspdf
    File? output_pickle_file
    String input_txt
  }
  command <<<
    plot_gffcmp_stats_py \
      ~{input_txt} \
      ~{if defined(report_pdf_plotgffcmpstatspdf) then ("-r " +  '"' + report_pdf_plotgffcmpstatspdf + '"') else ""} \
      ~{if defined(output_pickle_file) then ("-p " +  '"' + output_pickle_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    report_pdf_plotgffcmpstatspdf: "Report PDF (plot_gffcmp_stats.pdf)."
    output_pickle_file: "Output pickle file."
    input_txt: "Input gffcompare stats file."
  }
  output {
    File out_stdout = stdout()
    File out_output_pickle_file = "${in_output_pickle_file}"
  }
}