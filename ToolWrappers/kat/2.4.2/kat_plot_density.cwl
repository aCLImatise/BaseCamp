class: CommandLineTool
id: kat_plot_density.cwl
inputs:
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kat_plot_density
