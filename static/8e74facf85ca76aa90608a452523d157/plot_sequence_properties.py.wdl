version 1.0

task PlotSequencePropertiespy {
  input {
    String? input_format_fastq
    Int? number_bins_histograms
    String? report_pdf_plotsequencepropertiespdf
    Boolean? produce_joint_plot
  }
  command <<<
    plot_sequence_properties_py \
      ~{if defined(input_format_fastq) then ("-f " +  '"' + input_format_fastq + '"') else ""} \
      ~{if defined(number_bins_histograms) then ("-b " +  '"' + number_bins_histograms + '"') else ""} \
      ~{if defined(report_pdf_plotsequencepropertiespdf) then ("-r " +  '"' + report_pdf_plotsequencepropertiespdf + '"') else ""} \
      ~{if (produce_joint_plot) then "-j" else ""}
  >>>
  parameter_meta {
    input_format_fastq: "Input format (fastq)."
    number_bins_histograms: "Number of bins on histograms (50)."
    report_pdf_plotsequencepropertiespdf: "Report pdf (plot_sequence_properties.pdf)."
    produce_joint_plot: "Produce joint plot of lengths and mean quality values\\n(False).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}