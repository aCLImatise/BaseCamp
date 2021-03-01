class: CommandLineTool
id: lyner_plot.cwl
inputs:
- id: in_annotation_split
  doc: RANGE
  type: File?
  inputBinding:
    prefix: --annotation-split
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lyner
- plot
