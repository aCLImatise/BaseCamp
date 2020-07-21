class: CommandLineTool
id: ../../../plot_gffcmp_stats.py.cwl
inputs:
- id: report_pdf_plotgffcmpstatspdf
  doc: Report PDF (plot_gffcmp_stats.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: output_pickle_file
  doc: Output pickle file.
  type: string
  inputBinding:
    prefix: -p
- id: input_txt
  doc: Input gffcompare stats file.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_gffcmp_stats.py
