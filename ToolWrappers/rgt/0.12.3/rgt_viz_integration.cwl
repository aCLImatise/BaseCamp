class: CommandLineTool
id: rgt_viz_integration.cwl
inputs:
- id: in_i_html
  doc: "Integrate all the html files within the given directory and\ngenerate index.html\
    \ for all plots."
  type: boolean?
  inputBinding:
    prefix: -ihtml
- id: in_l_two_m
  doc: Convert a given file list in txt format into a experimental
  type: long?
  inputBinding:
    prefix: -l2m
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_matrix_dot
  doc: -o O        Define the folder of the output file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-viz
- integration
