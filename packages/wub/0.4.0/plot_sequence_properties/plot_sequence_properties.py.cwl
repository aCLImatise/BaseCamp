class: CommandLineTool
id: ../../../plot_sequence_properties.py.cwl
inputs:
- id: in_input_format_fastq
  doc: Input format (fastq).
  type: string
  inputBinding:
    prefix: -f
- id: in_number_bins_histograms
  doc: Number of bins on histograms (50).
  type: long
  inputBinding:
    prefix: -b
- id: in_report_pdf_plotsequencepropertiespdf
  doc: Report pdf (plot_sequence_properties.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: in_produce_joint_plot
  doc: "Produce joint plot of lengths and mean quality values\n(False).\n"
  type: boolean
  inputBinding:
    prefix: -j
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- plot_sequence_properties.py
