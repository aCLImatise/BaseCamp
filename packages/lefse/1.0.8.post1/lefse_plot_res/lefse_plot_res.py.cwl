class: CommandLineTool
id: lefse_plot_res.py.cwl
inputs:
- id: in_feature_font_size
  doc: ''
  type: long
  inputBinding:
    prefix: --feature_font_size
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
- lefse-plot_res.py
