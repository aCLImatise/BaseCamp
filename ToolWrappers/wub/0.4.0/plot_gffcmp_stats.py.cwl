class: CommandLineTool
id: plot_gffcmp_stats.py.cwl
inputs:
- id: in_report_pdf_plotgffcmpstatspdf
  doc: Report PDF (plot_gffcmp_stats.pdf).
  type: string?
  inputBinding:
    prefix: -r
- id: in_output_pickle_file
  doc: Output pickle file.
  type: File?
  inputBinding:
    prefix: -p
- id: in_input_txt
  doc: Input gffcompare stats file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pickle_file
  doc: Output pickle file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pickle_file)
hints: []
cwlVersion: v1.1
baseCommand:
- plot_gffcmp_stats.py
