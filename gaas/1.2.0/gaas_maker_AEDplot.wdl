version 1.0

task GaasMakerAEDplot.pl {
  input {
    Boolean? output_name_pdf
  }
  command <<<
    gaas_maker_AEDplot.pl \
      ~{true="--output" false="" output_name_pdf}
  >>>
  parameter_meta {
    output_name_pdf: "Output name of the pdf file created. If none provided, the default output is ouputPlot.pdf"
  }
}