class: CommandLineTool
id: lefse_plot_features.py.cwl
inputs:
- id: in_height
  doc: ''
  type: string
  inputBinding:
    prefix: --height
- id: in_width
  doc: ''
  type: string
  inputBinding:
    prefix: --width
- id: in_output_file
  doc: "the file for the output (the zip file if an archive is\nrequired, the output\
    \ directory otherwise)"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lefse-plot_features.py
