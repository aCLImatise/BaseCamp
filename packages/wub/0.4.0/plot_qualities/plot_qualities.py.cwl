class: CommandLineTool
id: ../../../plot_qualities.py.cwl
inputs:
- id: in_window_size_
  doc: Window size (50).
  type: long
  inputBinding:
    prefix: -w
- id: in_report_pdf_plotqualitiespdf
  doc: Report pdf (plot_qualities.pdf).
  type: string
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- plot_qualities.py
