class: CommandLineTool
id: lefse_plot_cladogram.py.cwl
inputs:
- id: in_clade_sep
  doc: ''
  type: string
  inputBinding:
    prefix: --clade_sep
- id: in_input_file
  doc: tab delimited input file
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: the file for the output image
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lefse-plot_cladogram.py
