class: CommandLineTool
id: nanocompore.bak_plot.cwl
inputs:
- id: in_nano_compo_re_dot_bak
  doc: ''
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
- nanocompore.bak
- plot
